//
//  NotificationSymbol.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 25/11/2023.
//

import SwiftUI

struct NotificationSymbol: View {
    var body: some View {
        Image(systemName: "bell")
            .font(.headline)
            .foregroundStyle(.main)
            .padding(8)
            .background(
                        Circle().fill(Color.white)
                            .stroke(Color.main)
            )
    }
}

#Preview {
    NotificationSymbol()
}
