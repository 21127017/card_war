//
//  ContentView.swift
//  CardWars
//
//  Created by Võ Nguyên Gia Bảo on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var card_player1 = "";
    @State var card_player2 = "";
    @State var card_player3 = "";
    @State var card_cpu1 = "";
    @State var card_cpu2 = "";
    @State var card_cpu3 = "";
    @State var card_hide = "card0";
    @State var player_score = 0;
    @State var cpu_score = 0;
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            VStack(spacing: 0.0){
                Text("------- Player -------")
                    .foregroundColor(Color.white)
                    .font(.headline)
                HStack{
                    Spacer()
                    Image(card_player1)
                    Spacer()
                    Image(card_player2)
                    Spacer()
                    Image(card_player3)
                    Spacer()
                }
                Image("logo")
                HStack{
                    Spacer()
                    Image(card_cpu1)
                    Spacer()
                    Image(card_cpu2)
                    Spacer()
                    Image(card_cpu3)
                    Spacer()
                }
                Text("------- CPU -------")
                    .foregroundColor(Color.white)
                    .font(.headline)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .background(Color.black)
            .cornerRadius(50)
            //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            Spacer()
            HStack{
                Spacer()
                Button(action: {
                    //count numer of cards point
                    var player_count:Int = 0
                    var cpu_count:Int = 0
                    //turn_Card 1
                    var player_rand = Int.random(in: 2...14)
                    var cpu_rand = Int.random(in: 2...14)
                    card_player1 = "card" + String(player_rand)
                    card_cpu1 = "card" + String(cpu_rand)
                    if player_rand < 10{
                        player_count += player_rand
                    }
                    if cpu_rand < 10{
                        cpu_count += cpu_rand
                    }
                    
                    //turn card 2
                    player_rand = Int.random(in: 2...14)
                    cpu_rand = Int.random(in: 2...14)
                    card_player2 = "card" + String(player_rand)
                    card_cpu2 = "card" + String(cpu_rand)
                    if player_rand < 10{
                        player_count += player_rand
                    }
                    if cpu_rand < 10{
                        cpu_count += cpu_rand
                    }
                    
                    //turn card 3
                    player_rand = Int.random(in: 2...14)
                    cpu_rand = Int.random(in: 2...14)
                    card_player3 = "card" + String(player_rand)
                    card_cpu3 = "card" + String(cpu_rand)
                    if player_rand < 10{
                        player_count += player_rand
                    }
                    if cpu_rand < 10{
                        cpu_count += cpu_rand
                    }
                    
                    player_count %= 10
                    cpu_count %= 10
                    if player_count > cpu_count{
                        player_score += 1
                    } else if player_count < cpu_count {
                        cpu_score += 1
                    }
                                        
                }, label: {
                    HStack {
                        Image(systemName: "dice")
                        Text("Roll")
                    }
                    .padding(.horizontal)
                    
                    
                })
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .background(Color.black)
                    .cornerRadius(40)
                Spacer()
            }
            Spacer()
            Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text(String(player_score))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                Spacer()
                VStack{
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text(String(cpu_score))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                Spacer()
            }
            Spacer()
        }
        .padding().background(Color.orange
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
