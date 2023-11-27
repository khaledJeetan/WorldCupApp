//
//  MatchCardView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 25/11/2023.
//

import SwiftUI

struct MatchCardView: View {
    @State var isFutureMatch:Bool = false
    @State var rightTeamName:String = "S.Arabia"
    @State var leftTeamName:String = "S.Arabia"
    @State var leftTeamFlag:String = "arabia-flag"
    @State var rightTeamFlag:String = "arabia-flag"
    @State var matchTime:String = "07:30"
    @State var matchDate:String = "10 Dec"
    @State var matchFullDate:String = "Dec 10, 2023"
    @State var stadium:String = "Emirates Stadium"
    @State var leftTeamResult:String = "1"
    @State var rightTeamResult:String = "1"
    @State var rating:String = "7.4"
    var body: some View {
        VStack{
            HStack{
                Text(rightTeamName)
                Image(.arabiaFlag)
                    .resizable()
                    .frame(maxWidth: 50, maxHeight: 50)
                
                VStack{
                    if isFutureMatch{
                        NotificationSymbol()
                        
                        Text(matchTime)
                            .foregroundStyle(Color.red)
                            .font(.headline)
                        Text(matchDate)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    else{
                        Text("\(leftTeamResult)-\(rightTeamResult)")
                            .fontWeight(.bold)
                            .padding(.vertical,5)
                            .frame(maxWidth: 80)
                            .background(.backgroundSecondary)
                            .clipShape(RoundedRectangle(cornerRadius: 100.0))
                    }
                                        
                }
                
                Image(rightTeamFlag)
                    .resizable()
                    .frame(maxWidth: 50, maxHeight: 50)
                Text(rightTeamName)

            }
            if isFutureMatch {
                Text(stadium)
                    .foregroundStyle(.secondary)
            }
            else{
                Text(matchFullDate)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                // Rating Label
                HStack{
                    Text(rating)
                    Image(systemName: "star.fill")
                }
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .padding(.vertical,5)
                    .padding(.horizontal)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 100.0))
                
                
            }
            
        }
    }
}

#Preview {
    MatchCardView()
}
