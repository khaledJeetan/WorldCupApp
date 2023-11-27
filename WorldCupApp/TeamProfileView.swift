//
//  TeamInfoView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 24/11/2023.
//

import SwiftUI

struct TeamProfileView: View {
    @State var navBarTabs:[String] = ["Overview","Squad","Matches","About"]
    @State var selection:String = "Overview"
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        VStack(spacing:0){
            
            ZStack{
                Image(.qatar3Team)
                    .resizable()
                LinearGradient(colors: [Color( #colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1) ) ,Color( #colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 0.1587075745) )], startPoint: .bottom, endPoint: .top)
                
                VStack{
                                      Spacer()
                    Image(.arabiaFlag)
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("SAUDI ARABIYA")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                }
                
                
            }
            .frame(maxHeight: 300)
            //            Selected View
            
            
            NavbarComponent(selectedTab: $selection, navBarTabs: navBarTabs)
//            ScrollView{
                TabView(selection: $selection){
                    Group{
                        TeamStatsView()
                            .tabItem{}.tag("Overview")
                            .padding(.top)
                        
                        TeamSquadView()
                            .tabItem{}.tag("Squad")
                        
                        TeamMatchesView()
                            .tabItem{}.tag("Matches")
                        
                        Text("ABOUT TEAM")
                            .tabItem{}.tag("About")
                    }
                    .shadow(radius: 10, x: 0.0, y: 10.0)
                                        
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
        }
         // back Arrow Button
        .overlay(alignment: .topLeading){
            Image(systemName: "arrow.left")
                .font(.title)
                .foregroundStyle(.white)
                .padding(10)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .padding()
                .padding()
                .padding(.vertical)
        }
        .onTapGesture {
            dismiss.callAsFunction()
        }
        .ignoresSafeArea()
        
        
    }
}

#Preview {
    TeamProfileView()
}

