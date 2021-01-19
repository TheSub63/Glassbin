//
//  Container.swift
//  Glassbin
//
//  Created by Clement GUILBERT on 12/01/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Container: Hashable, Codable, Identifiable{
    var id: Int
    var isFull: Bool
    private var  imageName : String
    var image: Image{
        Image(imageName)
    }
    private var coord: Coordinates
    var locationCoord: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coord.latitude, longitude: coord.longitude)
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude:Double
    }
}
