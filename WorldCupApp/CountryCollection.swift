//
//  CountryCollection.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 16/11/2023.
//

import SwiftUI

struct CountryCollection: View {
    
//    let countries
    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
    
        ScrollView {
            HStack(alignment:.firstTextBaseline ,spacing:0){
                Image(systemName: "exclamationmark.circle")
                    .foregroundStyle(Color.red)
                    .font(.subheadline)
                    .bold()
                Text("Please Note:")
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.red)
                Text(" Once your Team selected you're Not going to be able to do anything bla bla bla...")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.red)
            }
            .padding()
            .frame(maxWidth:.infinity)
            .border(Color.red)
            .padding([.top,.horizontal],10)
            LazyVGrid(columns: columns, content: {
                ForEach( 0..<30 ){
                    index in
                    Country(countryName: "palestine", flag: "ps-flag")
                        .font(.caption)
                        .frame(maxWidth:.infinity,maxHeight:.infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .padding(.vertical,15)
                        .background(Color.white)
                }
            })
            .padding(10)
            .background(Color.gray.opacity(0.2))
            
            Text("Note: This is just for testing puspuses")
        }
    }
}

#Preview {
    CountryCollection()
}
