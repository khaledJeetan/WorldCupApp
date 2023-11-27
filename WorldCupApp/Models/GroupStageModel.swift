//
//  GroupStage.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 22/11/2023.
//

import Foundation

struct GroupStageModel: Codable {
    var id:String? = UUID().uuidString
    var groups: [GroupModel]?
}
