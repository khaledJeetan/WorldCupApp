//
//  MatchType.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 22/11/2023.
//

import Foundation


enum MatchType: String, Codable {
    case groupStage = "Group Stage"
    case knockoutStage = "Knockout Stage"
    case roundOf16 = "Round of 16"
    case quarterFinal = "Quarter-Final"
    case semiFinal = "Semi-Final"
    case finalMatch = "Final"
}
