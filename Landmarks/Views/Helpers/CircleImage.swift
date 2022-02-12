//
//  CircleImage.swift
//  Landmarks
//
//  Created by Low Jung Xuan on 12/02/2022.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())//the shape of frame
            .overlay{
                Circle().stroke(.white, lineWidth: 4)//circle border thickness
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:Image("turtlerock"))
    }
}
