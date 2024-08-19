//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 8/18/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationSplitView {
                // 구조체에 identifiable 프로토콜을 추가하지 않았을 때 List 초기화
                // List(landmarks, id: \.id)
                List(landmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            } detail: {
                Text("Select a Landmakr")
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    LandmarkList()
}
