//
//  TournamentScreen.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 24/11/2023.
//

import SwiftUI

struct TournamentScreen: View {
    
    
    init(){
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(named: "main-color")
        UIPageControl.appearance().pageIndicatorTintColor = .black
    }
    
    @State var selectedView:Int = 0
    var body: some View {
        
        VStack {
            NavigationLink("Back", destination: SigninScreen())

            Text("Tournament Stages")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.serif)
                .foregroundStyle(.main)
            .padding(.bottom)
            .frame(maxWidth: .infinity)
            
            
            TabView{
                TeamsView()
                .tabItem {
                    Text("Group Stages")
                }
                KnockoutView()
                .tabItem {
                    Text("Knockout Stage")
                }
                    
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .clipShape(RoundedRectangle(cornerRadius: 50.0))
            .ignoresSafeArea()
            
        }
        .background(
            Color(.backgroundSecondary)
                .ignoresSafeArea()
        )

        
        
    }
}

#Preview {
    TournamentScreen()
}
