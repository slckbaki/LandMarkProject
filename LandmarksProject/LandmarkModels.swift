//
//  LandmarkModels.swift
//  LandmarksProject
//
//  Created by Selcuk Baki on 28/9/21.
//

import Foundation
import SwiftUI
import MapKit

struct LandmarkModels : Identifiable {
    var id: UUID
    var name : String
    var country : String
    var image : String
    var category : String
    var coordinate : Coordinate
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}




struct Coordinate {
    var latitude : Double
    var longitude : Double
}
let bosphorus = LandmarkModels(id: UUID(), name: "Bosphorus", country: "Turkey", image: "istanbul2", category: "Bridge", coordinate: Coordinate(latitude: 41.112742, longitude: 28.9311136))
let eiffel = LandmarkModels(id: UUID(), name: "Eiffel", country: "France", image: "paris", category: "Tower", coordinate: Coordinate(latitude: 48.858, longitude: 2.294))
let pisa = LandmarkModels(id: UUID(), name: "Pisa", country: "Italy", image: "pisa", category: "Tower", coordinate: Coordinate(latitude: 43.7229559, longitude: 10.3944083))
let coloseum = LandmarkModels(id: UUID(), name: "Colosseum", country: "Italy", image: "coloseum", category: "Arena", coordinate: Coordinate(latitude: 41.8902102, longitude: 12.4922309))
let sydney = LandmarkModels(id: UUID(), name: "Opera House", country: "Australia", image: "opera", category: "Opera House", coordinate: Coordinate(latitude: -33.8567799, longitude: 151.213108))
let london = LandmarkModels(id: UUID(), name: "London", country: "England", image: "london", category: "Bridge", coordinate: Coordinate(latitude: 51.5060739, longitude: -0.0859217))

let landmarkArray : [LandmarkModels] = [eiffel, pisa, sydney, coloseum, london, bosphorus]
