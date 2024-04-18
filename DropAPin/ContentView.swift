//
//  ContentView.swift
//  DropAPin
//
//  Created by Mindy Douglas on 3/26/24.
//

import SwiftUI
import MapKit

struct Location: Identifiable {

    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct ContentView: View {
    
    let locations = [
        Location(name: "16th St Baptist Church", coordinate: CLLocationCoordinate2D(latitude: 33.5167, longitude: -86.8150)),
        Location(name: "Birmingham Civil Rights Institute", coordinate: CLLocationCoordinate2D(latitude: 33.5161, longitude: -86.8135)),
        Location(name: "Masonic Temple", coordinate: CLLocationCoordinate2D(latitude: 33.515295, longitude: -86.912195)),
        Location(name: "St Paul United Methodist Church", coordinate: CLLocationCoordinate2D(latitude: 33.516068, longitude: -86.815829)),
        Location(name: "AG Gaston Motel", coordinate: CLLocationCoordinate2D(latitude: 33.5887994, longitude: -86.7240603)),
        Location(name: "The Ballard House Project", coordinate: CLLocationCoordinate2D(latitude: 33.5172, longitude: -86.8174)),
        Location(name: "Carver Theatre", coordinate: CLLocationCoordinate2D(latitude: 33.514980, longitude: -86.811390))
    ]
    
    
    let position = MapCameraPosition.region(
    MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.5163, longitude: -86.8135),
        span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)
        )
    )
    
    var body: some View {
        Map(initialPosition: position) {
            ForEach(locations) { location in
                Marker(location.name, coordinate: location.coordinate)
                    .tint(.orange)
            }
        }
        .mapStyle(.standard(elevation: .automatic))
            
    }
}

#Preview {
    ContentView()
}


    

