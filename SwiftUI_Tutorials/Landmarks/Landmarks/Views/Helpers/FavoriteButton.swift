//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 8/24/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    // Binding : view에서 data에 대한 읽고 쓰기가 가능하도록 함

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
