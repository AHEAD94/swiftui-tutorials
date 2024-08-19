//
//  Detail.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 8/18/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                if #available(iOS 15.0, *) {
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                } else {
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.gray)
                }
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
