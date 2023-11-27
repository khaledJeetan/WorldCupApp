//
//  PredictionPopup.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 20/11/2023.
//

import SwiftUI

struct PredictionPopup: View {
    
    @State var team1Predicate:String = "0"
    @State var team2Predicate:String = "0"
    @Binding var isPresenting:Bool
    
    var body: some View {
        

            
            VStack{
                CardTemplate(headerTitle:"GROUP STAGE", headerCaption: "GROUP A - Matchday 1 of \(team1Predicate)"){
                    
                    Group {
                        Country(countryName: "palestine", flag: "ag-flag")
                            .font(.caption)
                        
                        // Predict Score
                        VStack{
                           
                            dateTimeLabel
                            
                            HStack{
                                
                                selector
                                
                                Text(":")
                                    .font(.largeTitle)
                                
                                selector
                                
                            }
                            
                        }
                        Country(countryName: "palestine", flag: "ps-flag")
                            .font(.caption)
                    }
                    .padding(.top)
                    .padding(.bottom,25)
                    
                }
                
                button
            }
            .padding()
            .frame(maxHeight:.infinity)
            .background(
                .ultraThinMaterial
            )
        //dimiss screen on douple tap
            .onTapGesture(count:2) {
                isPresenting.toggle()
            }
            
    }
}

//#Preview {
//    let
//    PredictionPopup(isPresenting: )
//}



// MARK: COMPONENTS
extension PredictionPopup{
    
    
    
    var selector: some View{
        get{
            Picker("Selector", selection: $team1Predicate){
                ForEach(0..<20){
                    Text($0.description).tag($0.description)
                    
                }
            }
            .pickerStyle(.wheel)
            .frame(width: 50, height: 50)
            .border(Color.gray.opacity(0.5), width: 2)
            .clipShape(RoundedRectangle(cornerRadius: 3.0))
        }
        set(value){
            
        }
    }
    
    var button:some View{
        
        CapsuleButton(title: "PREDICT SCORE",hPadding:25, vPadding:7 ,onPress: {
            // TODO: add action when Prediction Button Pressed
            #warning("Button is NOT implemented")
        })
            .offset(y:-30)
            .zIndex(.infinity)
    }
    
    
    var dateTimeLabel:some View{
        Text("NOV 20 WED, 11:30 AM")
            .font(.caption)
            .fontWeight(.bold)
            .padding(6)
            .padding(.horizontal,8)
            .background([Color(#colorLiteral(red: 0.957279861, green: 0.9324961305, blue: 0.9415567517, alpha: 1))][0])
    }
    
}
