//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 8/18/24.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            // showFavoritesOnly가 false일 때 : 모든 landmark가 담김
            // true일 때 : isFavorite이 true인 landmark만 담김
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            // 구조체에 identifiable 프로토콜을 추가하지 않았을 때 List 초기화
            // List(filteredLandmarks, id: \.id)
            // identifiable 추가했을 때의 List 초기화
            // List(filteredLandmarks) { landmark in
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorite only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmakr")
        }
    }
}

#Preview {
    LandmarkList()
}
