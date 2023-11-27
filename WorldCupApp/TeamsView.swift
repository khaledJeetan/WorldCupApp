//
//  TeamsView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 24/11/2023.
//

import SwiftUI

struct TeamsView: View {
    
    @StateObject var model:HomeScreenViewModel = HomeScreenViewModel()
    
    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: -99, alignment: nil),
        GridItem(.flexible(), spacing: -99, alignment: nil)
    ]
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color( #colorLiteral(red: 0.1536391973, green: 0, blue: 0.05546128005, alpha: 1) ) ,Color( #colorLiteral(red: 0.5237838626, green: 0, blue: 0.2137402892, alpha: 1)) ], startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            
            
        VStack{
            Text("Teams")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.heavy)
                .padding(.vertical)
            ScrollView{
                    ForEach(model.groups){
                        group in
                        
                        VStack{
                            Text(group.name!.capitalized)
                                .font(.title2)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                                .frame(maxWidth:.infinity)
                                .overlay(alignment: .bottom){
                                    Rectangle()
                                        .fill(.white)
                                        .frame(maxHeight: 2)
                                        .padding(.horizontal,130)
                                }
                                .padding(.bottom)
                            
                            LazyVGrid(columns: columns){
                                ForEach(group.teams!){
                                    team in
                                        
                                    VStack(spacing:0) {
                                            Image(team.country!.flag)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(maxWidth: 130)
                                            Text(team.country!.name)
                                                .font(.headline)
                                                .fontWeight(.bold)
                                                .foregroundStyle(.main)
                                        }
                                    .padding(5)
                                    .padding(.bottom,5)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill([Color(#colorLiteral(red: 0.9254909158, green: 0.9254896045, blue: 0.8952824473, alpha: 1))][0])
                                        )
                                        
                                    }
                                    
                                }
                            .padding(.vertical)
                        }
                        .onTapGesture{
                            NavigationLink("Team Profile", destination: TeamProfileView())
                        }
                        .padding(.vertical)
                    
                    }
                    
                }
            }
            
        }
    }
}

#Preview {
    TeamsView()
}
