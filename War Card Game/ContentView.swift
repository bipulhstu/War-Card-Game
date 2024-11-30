//
//  ContentView.swift
//  War Card Game
//
//  Created by Bipul Islam on 30/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "car13"

    @State var playerScore = 0
    @State var cpuScore = 0
    
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
        //Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        
        //Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else{
            cpuScore += 1
        }
    }
    
}

#Preview {
    ContentView()
}
