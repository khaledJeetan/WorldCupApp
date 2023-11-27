//
//  Group.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 22/11/2023.
//

import Foundation

struct GroupModel:Identifiable, Codable{
    var id: String? = UUID().uuidString

    var name: String?
    var teams: [TeamModel]?
    var matches: [MatchModel]?
    
}
