//
//  MatchResult.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 22/11/2023.
//

import Foundation

struct MatchResultModel: Codable {
    var winner: TeamModel
    var loser: TeamModel
    var winningScore: Int
    var losingScore: Int
}
