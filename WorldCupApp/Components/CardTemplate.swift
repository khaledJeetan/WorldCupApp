//
//  CardTemplate.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 17/11/2023.
//

import SwiftUI

struct CardTemplate<Content:View>: View {
    
    
    @State var headerTitle:String
    @State var headerCaption:String
    @State var spacing:CGFloat = 8
    @ViewBuilder var content: ()-> Content
    

    
    var body: some View {
                VStack{
                    // header
                    header
                    
                    HStack(spacing: spacing){
                        
                        // content
                        content()
                        
                    }
                    .padding(.bottom)
                }
                .background(
                    Color.white
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: Color.black.opacity(0.05) ,radius:10,y:10)
    }
}

#Preview {
    CardTemplate(headerTitle: "MATCH", headerCaption: "NOV 20 WED, 11:30 AM"){
        Text("Hello World!!")
    }
}


// MARK: COMPONENTS
extension CardTemplate{
    
    var header: some View {
        HStack{
            Text(headerTitle)
                .font(.headline)
                .foregroundStyle(Color("main-color"))
                .fontWeight(.heavy)
            Spacer()
            Text(headerCaption)
                .font(.caption)
                .opacity(0.6)
                .fontWeight(.heavy)
        }
        .padding()
        .background(Color("secondary-color"))
    }
    
}
