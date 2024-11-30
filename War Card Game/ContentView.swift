//
//  ContentView.swift
//  War Card Game
//
//  Created by Bipul Islam on 30/11/24.
//

import SwiftUI

struct ContentView: View {
    var playerCard = "card7"
    var cpuCard = "car13"

    var playerScore = 0
    var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack{
                Spacer()
                
                
                Image("logo")
                
                Spacer()

                
                HStack{
                    Spacer()

                    Image(playerCard)
                    
                    Spacer()

                    Image(cpuCard)
                    
                    Spacer()

                }
                
                Spacer()

                
                Button(action:{
                    deal()
                },label: {
                    Image("button")
                })
                
                Spacer()

                
                HStack{
                    Spacer()

                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                
                Spacer()
                
            }
            .foregroundColor(.white)
        }
    }
    
    
    func deal(){
        print("Deal Cards")
        
        
    }
    
}

#Preview {
    ContentView()
}
