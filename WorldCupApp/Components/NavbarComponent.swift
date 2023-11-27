//
//  NavbarComponent.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 25/11/2023.
//

import SwiftUI

struct NavbarComponent: View {
    @Binding var selectedTab:String
    @State var backgroundColor:Color = .backgroundSecondary
    @State var indicatorPosition:Alignment = .bottom
    @State var navBarTabs:[String]
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(navBarTabs, id: \.self){ tab in
                    if tab.contains(selectedTab) {
                        Text(tab)
                            .foregroundStyle(.main)
                            .padding()
                            .overlay(alignment: indicatorPosition){
                                Spacer()
                                    .frame(height: 2)
                                    .background(.main)
                            }
                            .fontWeight(.bold)
                    }else{
                        Text(tab)
                            .padding()
                            .foregroundStyle(Color.secondary)
                            .onTapGesture {
                                setSelectedTab(tabName: tab)
                            }
                    }
                }
            }
            .fontWeight(.bold)
            .frame(maxWidth:.infinity)
            .background(backgroundColor)
        }
        .scrollIndicators(.never)
    }
}
    
    // MARK: FUNCTIONS
    extension NavbarComponent{
        
        func setSelectedTab(tabName:String){
            withAnimation(.easeIn){
                selectedTab = tabName
            }
        }
    }
