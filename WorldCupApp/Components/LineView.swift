//
//  LineView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 24/11/2023.
//

import SwiftUI

struct LineView: View {
    @State var alignment:Alignment = .topLeading;
    var body: some View {
        
            
        Spacer()
            .frame(width: 2, height: 50)
            .background(.white)
                .overlay(alignment:alignment){
                    
                    Spacer()
                        .frame(width: 20, height: 2)
                        .background(.white)
                }
            
    }
}

#Preview {
    LineView()
}
