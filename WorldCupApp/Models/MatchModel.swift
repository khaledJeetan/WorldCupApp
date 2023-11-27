//
//  MatchModel.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 21/11/2023.
//

import Foundation

struct MatchModel: Identifiable, Codable {
    var id: String = UUID().uuidString
    var matchTitle: String?
    var date: String?
    var teams: [TeamModel]?
    var result: MatchResultModel?
    var playground: String?
    var location: String?
    var type: String?
}
