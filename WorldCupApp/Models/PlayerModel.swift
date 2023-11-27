//
//  PlayerModel.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 21/11/2023.
//

import Foundation

struct PlayerModel:Identifiable,Codable {
    var id: String = UUID().uuidString
    var name: String?
    var age: Int?
    var image: URL?
    var position: String?
    var number: Int?
    var team: TeamModel?
}
