//
//  CapsuleButton.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 17/11/2023.
//

import SwiftUI

struct CapsuleButton: View {
    
    @State var image:String? = nil
    @State var title:String? = nil
    @State var hPadding:CGFloat = 8
    @State var vPadding:CGFloat = 0
    @State var onPress: ()->Void
    
    var body: some View {
        Button(action: onPress) {
            HStack {
                if let image = image {
                    Image(systemName: image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 10, height: 20)
                }
                if let title = title {
                    Text(title)
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                }
            }
            .padding(6)
            .padding(.horizontal,hPadding)
            .padding(.vertical,vPadding)
            
        }
        .background(
            Capsule()
                .fill(.main)
        )    }
}

#Preview {
    CapsuleButton(title: "Press Me", onPress: {} )
}
