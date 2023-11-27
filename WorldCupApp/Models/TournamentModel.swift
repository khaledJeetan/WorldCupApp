//
//  TournamentModel.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 22/11/2023.
//

import Foundation


struct TournamentModel: Codable {
    var id: String = UUID().uuidString
    var name: String
    var startDate: String?
    var endDate: String?
    var teams: [TeamModel]?
    var groupStage: GroupStageModel?
    var knockoutStage: KnockoutStageModel?
}
