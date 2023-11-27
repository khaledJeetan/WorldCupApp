//
//  CountryCollection.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 16/11/2023.
//

import SwiftUI

struct CountryCollection: View {
    
    
    // FIXME: this needs to implement LoginViewModel.
    #warning("No ViewModel Found")
    
    
    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
    
        ScrollView {
            
            WarningMessage
            
            LazyVGrid(columns: columns, content: {
                ForEach( 0..<30 ){
                    index in
                    
                    // FIXME: Not selectable or interactive
                    #warning("cards are not Selectable")
                    
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



// MARK: COMPONENTS
extension CountryCollection{
    
    var WarningMessage: some View{
        // FIXME: Extract Constants
        #warning("constants should be extracted")
        return HStack(alignment:.firstTextBaseline ,spacing:0){
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
    }
}
