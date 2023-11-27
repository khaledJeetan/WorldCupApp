//
//  TeamSquadView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 25/11/2023.
//

import SwiftUI

struct TeamSquadView: View {
    
    @State var playerImage:String = "messi"
    @State var playername:String = "Christophe Galtier"
    @State var playerCountryName:String = "France"
    @State var playerCountryFlag:String = "ag-flag"
    
    
    var body: some View {
        ScrollView{
            
            TeamCardTemplate(cardTitle: "Head Coach"){
                player(
                    image: playerImage,
                    name: playername,
                    country: playerCountryName,
                    flag: playerCountryFlag
                )
                
            }
            
            TeamCardTemplate(cardTitle: "Goal Keepers"){
                
                
                ForEach(0..<3){ _ in
                    player(
                        image: playerImage,
                        name: playername,
                        country: playerCountryName,
                        flag: playerCountryFlag
                    )
                }
            }
            
            
            TeamCardTemplate(cardTitle: "Defenders"){
                
                ForEach(0..<3){ _ in
                    player(
                        image: playerImage,
                        name: playername,
                        country: playerCountryName,
                        flag: playerCountryFlag
                    )
                }
            }
            
            TeamCardTemplate(cardTitle: "Attackers"){
                
                
                ForEach(0..<7){ _ in
                    player(
                        image: playerImage,
                        name: playername,
                        country: playerCountryName,
                        flag: playerCountryFlag
                    )
                }
            }
        }
    }
}
    
    #Preview {
        TeamSquadView()
    }
    
    
    
    // MARK: Functions
    extension TeamSquadView{
        
        func player(image:String, name:String, country:String, flag: String)->some View{
            HStack(spacing:15){
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())

                VStack(alignment:.leading, spacing:3){
                    Text(name)
                        .font(.subheadline)
                    HStack(spacing:0){
                        Image(.agFlag)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                        
                        Text(country)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
        
    }
