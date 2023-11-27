//
//  HomeScreenViewModel.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 22/11/2023.
//

import Foundation

class HomeScreenViewModel: ObservableObject{
    
    @Published var tournaments:[TournamentModel] = []
//    @Published var
    @Published var isLoading:Bool = false
    
    var groups:[GroupModel]{
        tournaments.first?.groupStage?.groups ?? []
    }
    
    @Published var user:UserModel = UserModel(username: "khaled", password: "123", country: CountryModel(name: "palestine", flag: "ps-flag"), predictions: nil)
    
    var userCountry:String{
        self.user.country.name
    }
    var userCountryFlag:String{
        self.user.country.flag
    }
    var username:String{
        self.user.username
    }
    
    
    init(){
        DispatchQueue.main.async{
            Task{
                self.isLoading = true
                if let tournaments = await ReadData.getDataFromJSON(){
                    self.tournaments = tournaments
                    self.isLoading = false
                }
                
            }
            
        }
    }
        
        
        func getMatches()-> [MatchModel]{
            var groupMatches:[MatchModel] = []
            
            let groups = tournaments.first?.groupStage?.groups
//            print(groups ?? [])
            if let groups = groups{
                for group in groups {
                    print(group.name)
                    groupMatches.append(contentsOf: group.matches!)
                }
            }
            
            return groupMatches
        }
}
