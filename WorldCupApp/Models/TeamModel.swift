//
//  TeamModel.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 21/11/2023.
//

import Foundation

struct TeamModel: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name: String?
    var country: CountryModel?
    var members: [PlayerModel]?
    var coach: CoachModel?
}

