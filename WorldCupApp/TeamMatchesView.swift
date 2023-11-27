//
//  TeamMatchesView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 25/11/2023.
//

import SwiftUI

struct TeamMatchesView: View {
    @State var rightTeamName:String = "S.Arabia"
    @State var leftTeamName:String = "S.Arabia"
    @State var leftTeamFlag:String = "arabia-flag"
    @State var rightTeamFlag:String = "arabia-flag"
    @State var matchTime:String = "07:30"
    @State var matchDate:String = "10 Dec"
    @State var stadium:String = "Emirates Stadium"
    @State var nextMatchName:String = "LIGUE 1"
    @State var nextMatchDistance:String = "Tomorrow"
    let previousMatchesCount:Int = 5
    var body: some View {
      
        ScrollView{
            VStack{
                nextMatch
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .shadow(radius: 10)
                    .padding()

                Section("Previous Matches"){
                   previousMatches
                }
                
            }
        }
        
    }
}

#Preview {
    TeamMatchesView()
}



// MARK: COMPONENTS

extension TeamMatchesView{
    
    var nextMatch:some View {
       
        VStack{
            HStack{
                VStack(alignment:.leading){
                    Text("NEXT MATCH".capitalized)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.main)
                    Text(nextMatchDistance)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                
                Text(nextMatchName)
                    .font(.subheadline)
                    .foregroundStyle(.main)
                    .padding(8)
                    .background(
                        Color.backgroundSecondary
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
            }
            
            MatchCardView(
                isFutureMatch: true,
                rightTeamName: rightTeamName,
                leftTeamName: leftTeamName,
                leftTeamFlag: leftTeamFlag,
                rightTeamFlag: rightTeamFlag,
                matchTime: matchTime,
                matchDate: matchDate,
                stadium: stadium
            )
            
           
        }
        
    }
    
    
    var previousMatches: some View{
        
        ForEach(0 ..< 5){ index in
            
            TeamCardTemplate(cardTitle: getPreviousMatchName(index: index)){
                
                MatchCardView(
                    isFutureMatch: false,
                    rightTeamName: getRightTeamOfPreviousMatch(index: index),
                    leftTeamName: getLeftTeamOfPreviousMatch(index: index),
                    leftTeamFlag: getLeftTeamFlagOfPreviousMatch(index: index),
                    rightTeamFlag: getRightTeamFlagOfPreviousMatch(index: index),
                    matchFullDate: getPreviousMatchFullDate(index: index),
                    leftTeamResult: getPreviousMatchLeftTeamResul(index: index),
                    rightTeamResult: getPreviousMatchRightTeamResul(index: index),
                    rating: getPreviousMatchRate(index: index)
                )
            }
        }
        
    }
    
}



//MARK: FUNCTIONS
extension TeamMatchesView{
    func getPreviousMatchName(index: Int)->String{
        return "Ligue 1"
    }
    func getLeftTeamOfPreviousMatch(index: Int)->String{
        return "S. Arabia"
    }
    func getRightTeamOfPreviousMatch(index: Int)->String{
        return "S. Arabia"
    }
    func getLeftTeamFlagOfPreviousMatch(index: Int)->String{
        return "arabia-flag"
    }
    func getRightTeamFlagOfPreviousMatch(index: Int)->String{
        return "canada-flag"
    }
    func getPreviousMatchFullDate(index: Int)->String{
        return "Dec 10, 2023"
    }
    func getPreviousMatchLeftTeamResul(index: Int)->String{
        return "19"
    }
    func getPreviousMatchRightTeamResul(index: Int)->String{
        return "18"
    }
    func getPreviousMatchRate(index: Int)->String{
        return "7.4"
    }

}
