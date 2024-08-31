//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ryu Dae-ha on 2024/08/15.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        if #available(iOS 15.0, *) {
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        } else {
            image
                .clipShape(Circle())
                .shadow(radius: 7)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
