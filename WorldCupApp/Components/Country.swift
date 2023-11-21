//
//  Country.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 16/11/2023.
//

import SwiftUI

struct Country: View {
    @State var description:String?
    @State var countryName:String
    @State var flag:String
    
    var body: some View {
        VStack(spacing:0){
            Image(flag)
                .resizable()
                .clipShape(Circle())
                .padding(8)
                .background(
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                )
                .frame(width: 60, height: 60)
                .scaledToFit()
                .padding(7)
            if let description = description{
                Text(description)
            }
            Text(countryName)
                .fontWeight(.bold)
        }
    }
}

#Preview {
//    Country(countryName: "ALGERIA", flag: "ag-flag")
    Country(countryName: "PALESTINE", flag: "ps-flag")

}
