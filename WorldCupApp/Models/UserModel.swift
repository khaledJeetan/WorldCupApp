//
//  UserModel.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 21/11/2023.
//

import Foundation

struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    var username: String
    var password: String
    var country: CountryModel
    var predictions: [PredictionModel]?
}
