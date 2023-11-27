//
//  KnockoutRound.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 22/11/2023.
//

import Foundation

struct KnockoutRoundModel
: Identifiable, Codable {
    var id: String? = UUID().uuidString
    var name: String?
    var matches: [MatchModel]?
}
