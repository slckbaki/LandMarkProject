//
//  ContentView.swift
//  LandmarksProject
//
//  Created by Selcuk Baki on 28/9/21.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
            VStack {
                List(landmarkArray) { landmark in
                    HStack {
                        Image(landmark.image)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .scaledToFit()
                        VStack(alignment: .center) {
                            Text(landmark.name)
                                .font(.title)
                                .position(x: 115, y: 40)
                            Text(landmark.country)
                            Text(landmark.category)
                        }
                    }
                }
                ZStack {
                    MapView(coordinate: landmarkArray[0].locationCoordinate)
                        .frame(height: UIScreen.main.bounds.height * 0.4)
                    CircleImageView(image: Image("london"))
                        .frame(width : UIScreen.main.bounds.width * 0.1, height : UIScreen.main.bounds.height * 0.1)
                        .position(x: UIScreen.main.bounds.width / 2  , y : 30)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
