//
//  CircleImageView.swift
//  LandmarksProject
//
//  Created by Selcuk Baki on 29/9/21.
//

import SwiftUI

struct CircleImageView: View {
    
    var image : Image
    
    var body: some View {

            image
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
            .overlay(Circle().stroke(lineWidth: 3))
                .shadow(radius: 25)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("london"))
    }
}
