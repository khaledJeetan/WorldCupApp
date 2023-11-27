//
//  TeamStatsView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 25/11/2023.
//

import SwiftUI

struct TeamStats{
    var name:String
    var number:String
}

struct Recent5MatchesForm: Hashable{
    var state:String
    var date:String
}


struct TeamStatsView: View {
    @State var teamStats:[TeamStats] = [
        TeamStats(name: "TOTAL", number: "23"),
        TeamStats(name: "WON", number: "18"),
        TeamStats(name: "DRAW", number: "2"),
        TeamStats(name: "LOST", number: "1")
        ]
    @State var recentForm:[Recent5MatchesForm] = [
        Recent5MatchesForm(state: "W", date: "24/01"),
        Recent5MatchesForm(state: "W", date: "24/01"),
        Recent5MatchesForm(state: "W", date: "24/01"),
        Recent5MatchesForm(state: "L", date: "24/01"),
        Recent5MatchesForm(state: "D", date: "24/01")
    ]
    var body: some View {
        ScrollView{
            HStack{
                // total card
                ForEach(teamStats,id:\.name){stat in
                    VStack{
                        Text(stat.name)
                            .font(.headline)
                        Text(stat.number)
                            .font(.title)
                            .fontWeight(.heavy)
                    }
                    .foregroundStyle(.white)
                    .padding(15)
                    .background(.main)
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                }
            }
            
            
            // Recent form
            VStack(alignment:.leading){
                Text("Recent Form")
                    .font(.headline)
                HStack{
                    ForEach(recentForm,id:\.self){form in
                        VStack{
                            Text(form.state)
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .padding(15)
                                .frame(minWidth:60)
                                .background(getColor(state: form.state))
                                .clipShape(Circle())
                            Text(form.date)
                                .font(.caption)
                        }
                    }
                }
            }
            .fontWeight(.bold)
            .padding(.vertical,20)
            
            
            // player card
            VStack(alignment: .trailing){
                Text("MOST GOALS")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding([.top,.horizontal])
                HStack{
                    Image(.messi)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 150, maxHeight: 370)
                    VStack(alignment: .trailing){
                        Text("16")
                            .font(
                                .system(
                                    size: 50,
                                    weight: .heavy,
                                    design: .monospaced
                                )
                            )
                        HStack{
                            Text("Sergio")
                                .fontWeight(.light)
                            Text("Aguero")
                        }
                    }
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 140)
                .background(.main)
                .background(in: RoundedRectangle(cornerRadius: 30.0))
                //            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                
                
            }
            .clipped()
            //        .frame(maxWidth: .infinity)

            .padding()
            
            
            
            
            VStack(alignment: .leading){
                Text("MOST ASSISTS")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding([.top,.horizontal])
                HStack{
                    
                    VStack(alignment: .leading){
                        Text("16")
                            .font(
                                .system(
                                    size: 50,
                                    weight: .heavy,
                                    design: .monospaced
                                )
                            )
                        HStack{
                            Text("Sergio")
                                .fontWeight(.light)
                            Text("Aguero")
                        }
                    }
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    
                    Image(.messi)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 150, maxHeight: 370)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 140)
                .background(.main)
                .background(in: RoundedRectangle(cornerRadius: 30.0))
                //            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                
                
            }
            .clipped()
            //        .frame(maxWidth: .infinity)
//            .background()
            .padding([.top,.horizontal])
        }
        
    }
}

#Preview {
    TeamStatsView()
}



// MARK: FUNCTIONS
extension TeamStatsView{
    
    func getColor(state:String) -> Color{
        switch state{
        case "W":
            return .green
        case "L":
            return .red
        case "D":
            return .secondary
        default:
            return .main
        }
    }
    
}
