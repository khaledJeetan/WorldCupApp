//
//  JSONDataDecoder.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 23/11/2023.
//

import Foundation


struct ReadData{
    
    
    static func getDataFromJSON() async -> [TournamentModel]?{
        
        let jsonFileName = "MockJSON"
        
        guard let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json") else{
            print("file NOT accessable/ or not found!")
            return []
        }
        
        
        do{
            let data = try Data(contentsOf: url)
           
            let tournaments = try JSONDecoder().decode(Tournaments.self, from: data)
            
            return tournaments.tournaments
            
        }catch{
            print(error)
            return []
        }
        
    }
    
}
