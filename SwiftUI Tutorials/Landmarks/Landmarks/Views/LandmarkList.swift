//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 8/18/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
        // 구조체에 identifiable 프로토콜을 추가하지 않았을 때
        // List(landmarks, id: \.id)
    }
}

#Preview {
    LandmarkList()
}
