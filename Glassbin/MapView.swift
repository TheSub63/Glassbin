//
//  MapView.swift
//  Glassbin
//
//  Created by Clement GUILBERT on 12/01/2021.
//

import MapKit

import SwiftUI

struct MapView: View {
    var coord: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region).onAppear{
            setRegion(coord)
        }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(center:coordinate,span:MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coord: CLLocationCoordinate2D(latitude:45.74514, longitude: 3.07564))
    }
}
