//
//  ContentView.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 21/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State var isUserSignedIn:Bool = true
    var body: some View {
        NavigationStack{
            
            if !isUserSignedIn {
                SigninScreen()
            }
            else{
                
                TabView{
                    
                    HomeScreen()
                        .navigationTitle("Winners")
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }
                    
                    WinnerScreen()
                        .tabItem {
                            Image(systemName: "trophy")
                            Text("Matches")
                        }
                    
                    CountryCollection()
                        .tabItem {
                            Image(systemName: "medal")
                            Text("Winners")
                        }
                    
                    WinnerScreen()
                        .tabItem {
                            Image(systemName: "list.star")
                            Text("Toppers")
                        }
                    
                    
                    Text("Profile Page")
                        .tabItem {
                            Image(systemName: "person")
                            Text("profile")
                        }
                    
                }
                .accentColor(.red)
            }
        }
    }
}

#Preview {
    ContentView()
}
