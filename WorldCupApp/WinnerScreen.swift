//
//  WinnerScreen.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 17/11/2023.
//

import SwiftUI

struct WinnerScreen: View {
    @State var firstTeamScore = 2
    let secondTeamScore = 3
    
    var body: some View {
        ScrollView {
            ForEach( 0 ..< 10 ){ index in
                
                CardTemplate(headerTitle: "MATCH \(index)", headerCaption:"NOV 20 WED, 11:30 AM"){
                    
                    Country(countryName: "ALGERIA", flag: "ag-flag")
                        .font(.caption)
                    // Score
                    VStack(spacing:5) {
                        Text("\(firstTeamScore) : \(secondTeamScore)")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        CapsuleButton(image:"trophy-cup", title: "WINNERS",hPadding: 15,vPadding: 3, onPress: {})
                    }
                    .padding()
                    
                    Country(countryName: "PALESTINE", flag: "ps-flag")
                        .font(.caption)
                }
                .padding()
            }
        }
    }
}

#Preview {
    WinnerScreen()
}
