//
//  KnockoutStage.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 22/11/2023.
//

import Foundation

struct KnockoutStageModel: Identifiable, Codable {
    var id: String? = UUID().uuidString
    var rounds: [KnockoutRoundModel]?
}
