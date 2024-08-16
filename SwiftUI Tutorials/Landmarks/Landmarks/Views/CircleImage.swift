//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 2024/08/15.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            Image("turtlerock")
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        } else {
            Image("turtlerock")
                .clipShape(Circle())
                .shadow(radius: 7)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}