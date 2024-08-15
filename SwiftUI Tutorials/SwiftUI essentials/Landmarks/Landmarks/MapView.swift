//
//  MapView.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 2024/08/15.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Text("Map() method needs Xcode version over 15")
        //Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
