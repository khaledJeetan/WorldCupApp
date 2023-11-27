//
//  TeamCardTemplate.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 25/11/2023.
//

import SwiftUI

struct TeamCardTemplate<Content:View>: View {
    
    @State var cardTitle:String
    @ViewBuilder var content:Content
    
    var body: some View {
        VStack(alignment: .leading,spacing: 15){
            customLabel(title: cardTitle)
            
            // content
            content
            
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15.0))
        .padding()
        .shadow( radius: 10, y:10)
    }
}

#Preview {
    TeamCardTemplate(cardTitle: "Hello World"){
        
    }
}

// MARK: FUNCTIONS

extension TeamCardTemplate{
    
    func customLabel(title: String) ->some View {
        return Text(title)
                .font(.headline)
                .foregroundStyle(.main)
                .padding(5)
                .frame(maxWidth: .infinity)
                .background(Color.backgroundSecondary)
                .clipShape(RoundedRectangle(cornerRadius: 50.0))
    }
    
}
