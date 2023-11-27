//
//  KnockoutView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 24/11/2023.
//

import SwiftUI

struct KnockoutView: View {
    
    @State var CountryFlagSize:CGFloat = 30
    
    
    var body: some View {
        
            ZStack{
                
                LinearGradient(colors: [Color( #colorLiteral(red: 0.1536391973, green: 0, blue: 0.05546128005, alpha: 1) ) ,Color( #colorLiteral(red: 0.5237838626, green: 0, blue: 0.2137402892, alpha: 1)) ], startPoint: .topLeading, endPoint: .trailing)
                    .ignoresSafeArea()
                
                    ScrollView {
                                              
                        VStack(spacing:0){
                            Text("Round of 16")
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                                .padding(.bottom)
                            // round of 16
                            HStack{
                                
                                Spacer()
                                VStack{
                                    Text("JUN, 30\n12:00 AM")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                    Image("tunisia-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("qatar-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    LineView(alignment: .bottomLeading)
                                    
                                }
                                Spacer()
                                VStack{
                                    Text("JUN, 30\n12:00 AM")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                    Image("usa-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("poland-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    LineView(alignment: .bottomTrailing)
                                    
                                }
                                Spacer()
                                
                                VStack{
                                    Text("JUN, 30\n12:00 AM")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                    Image("senegal-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("senegal-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    LineView(alignment: .bottomLeading)
                                    
                                    
                                }
                                Spacer()
                                
                                VStack{
                                    Text("JUN, 30\n12:00 AM")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                    Image("senegal-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("senegal-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    LineView(alignment: .bottomTrailing)
                                }
                                Spacer()
                            }
                        }

                        // quarter final
                            HStack(spacing:45){
                            
                            VStack{
                                
                                Image("senegal-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                Image("senegal-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                Text("JUN, 30\n12:00 AM")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                LineView(alignment: .bottomLeading)
                                
                            }
                                Text("Quater\nFinal")
                                    .font(.caption)
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.white)

                            VStack{
                                Image("senegal-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                Image("senegal-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                Text("JUN, 30\n12:00 AM")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                LineView(alignment: .bottomTrailing)
                            }
                                


                        }

                        // semi final

                        HStack{
                            Text("Semi\nFinal")
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            VStack{
                                Image("serbia-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                Image("senegal-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                
                            }
                            Text("JUN, 30\n12:00 AM")
                                .font(.caption)
                                .foregroundStyle(.white)
                        }
                        
                        // Final
                        Spacer()
                        HStack{
                            Spacer()
                            Text("FINAL")
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            Spacer()
                            Spacer()
                            Image("argentina-flag")
                                .resizable()
                                .frame(width: 60,height: 60)
                            Image("world-cup2")
                                .resizable()
                                .frame(width: 70,height: 140)
                            Image("serbia-flag")
                                .resizable()
                                .frame(width: 60,height: 60)
                            Spacer()
                            Text("JUN, 30\n12:00 AM")
                                .font(.caption)
                                .foregroundStyle(.white)
                            Spacer()
                         
                        }
                        Spacer()

                        // semi final
                        
                        HStack{
                            Text("Semi\nFinal")
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            
                                VStack{
                                    Image("serbia-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("senegal-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                }
                                Text("JUN, 30\n12:00 AM")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                        }
                        
                        
                        
                        
                        
                        // quarter final
                        HStack(spacing:45){
                            VStack{
                                LineView()
                                Text("JUN, 30\n12:00 AM")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                Image("serbia-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                Image("senegal-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                
                            }
                            Text("Quater\nFinal")
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                            VStack{
                                LineView(alignment: .topTrailing)
                                Text("JUN, 30\n12:00 AM")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                Image("canada-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                                Image("argentina-flag")
                                    .resizable()
                                    .frame(
                                        width: CountryFlagSize,
                                        height: CountryFlagSize
                                    )
                            }
                        }
                        
                    
                        
                        // round of 16
                        VStack{
                            HStack{
                                Spacer()
                                VStack{
                                    LineView()
                                    Text("JUN, 30\n12:00 AM")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                    Image("costarica-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("australia-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    
                                }
                                Spacer()
                                VStack{
                                    LineView(alignment: .topTrailing)
                                    Text("JUN, 30\n12:00 AM")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                    Image("japan-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("korea-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    
                                }
                                Spacer()
                                
                                VStack{
                                    LineView()
                                    Text("JUN, 30\n12:00 AM")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                    Image("arabia-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("germany-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    
                                }
                                Spacer()
                                
                                VStack{
                                    LineView(alignment: .topTrailing)
                                    Text("JUN, 30\n12:00 AM")
                                        .font(.caption)
                                        .foregroundStyle(.white)
                                    Image("beleguim-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    Image("brasil-flag")
                                        .resizable()
                                        .frame(
                                            width: CountryFlagSize,
                                            height: CountryFlagSize
                                        )
                                    
                                }
                                Spacer()
                            }
                            Text("Round of 16")
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                                .padding()
                        }
                        
                }
                    .padding(.top)
        }
        
    }
}

#Preview {
    KnockoutView()
}
