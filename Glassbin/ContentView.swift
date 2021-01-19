//
//  ContentView.swift
//  Glassbin
//
//  Created by Clement GUILBERT on 12/01/2021.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        MapView(coord: CLLocationCoordinate2D(latitude:45.74514, longitude: 3.07564))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
