//
//  HomeScreen.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 20/11/2023.
//

import SwiftUI

struct HomeScreen: View {
    
    
    @StateObject var model:HomeScreenViewModel = HomeScreenViewModel()
    
    @State var team1Score:Int = 0
    @State var team2Score:Int = 0
    
    @State var isPredicted:Bool = true
    @State var isPredictionPresenting = false
    

    
    var date:Date = Date.now
    var body: some View {
                    
//            ZStack{
        VStack(spacing:-20){
            
                    Image(.homeBackground)
                        .resizable()
                        .scaledToFit()
                        .overlay(.black.opacity(0.6))
                        .overlay(alignment:.bottom){
                            Country(
                                description:"YOU ARE WITH THE TEAM",
                                countryName: model.userCountry.uppercased(),
                                flag: model.userCountryFlag
                            )
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .padding(.bottom,50)
                        }
                        .background(Color.gray)
                
                    ScrollView{
                        
                        
                        ForEach(model.getMatches()){ match in
                            
                            card
                                .shadow(
                                    color: .black.opacity(0.09),
                                    radius: 10
                                )
                                .padding(.horizontal)
                                .padding(.vertical,8)
                        }
                        
                    }
                    .padding(.top)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20.0))
                }
        .ignoresSafeArea(edges: .top)
        .overlay{
                if isPredictionPresenting{
                    PredictionPopup(isPresenting: $isPredictionPresenting)
                }
            }
            
    }
}

#Preview {
    HomeScreen()
}


// MARK: COMPONENT
extension HomeScreen{
    
    var card:some View{
        CardTemplate(headerTitle: "GROUP STAGE", headerCaption:  "Group A - Matchday 1 of 3", spacing: 2){
            
            Spacer()
            matchTeams

            // Vertical Line Separator
            Spacer()
            Rectangle()
                .fill(.secondary.opacity(0.5))
                .frame(maxWidth: 2, maxHeight: 90)
                .padding(.vertical,5)
            Spacer()

            
            VStack {
                
               matchDateTime
                
                // show Prediction with edit OR Predict Button
                if isPredicted{
                    
                    // Horizontal Line Seperator
                    Rectangle()
                        .fill(.secondary.opacity(0.5))
                        .frame(maxWidth: 90, maxHeight: 2)
                    
                    predictionScore
                    
                } else{
                    predictionButton
                }
                
            }
            Spacer()

            
        }
    }
    
    var matchDateTime: some View{
        VStack(alignment: .leading){
            Text("NOV 20 WED")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                
            Text("11:30 AM")
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .fontDesign(.monospaced)

    }
    
    var matchTeams: some View{
        Group{ // MARK: changed from Group
            Country(countryName: "PALESTINE", flag: "ps-flag")
                .font(.caption2)
            
            
            Text("Vs")
                .foregroundStyle(.gray)
            
            Country(countryName: "ALGERIA", flag: "ag-flag")
                .font(.caption2)
        }

    }
    
    
    var predictionScore: some View{
        HStack{
            Text("\(team1Score) : \(team2Score)")
            predictionButton
            
        }
        .fontWeight(.bold)
        
    }
    
    
    var predictionButton: some View{
        let title = isPredicted ? nil : "PREDICT NOW"
        let image = isPredicted ? "square.and.pencil" : nil
        
        return CapsuleButton(image: image,title: title,hPadding: 10,vPadding: 5){
            isPredictionPresenting.toggle()
        }
        .foregroundStyle(.white)
        
    }
    
    
}
