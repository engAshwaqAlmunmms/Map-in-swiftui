//
//  ContentView.swift
//  mapSwiftUI
//
//  Created by Ashwaq Alghamdi on 8.03.2024.
//

import SwiftUI
import  MapKit

struct ContentView: View {
    
    //MARK :- 24.7136° N, 46.6753° E , Riyadh/Coordinates
    
    let startPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 24.7136, longitude: 46.6753),
            span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        )
    )
    
    var body: some View {
        VStack {
            Text("Map In SwiftUI With Ashwaq !")
                .bold()
                .padding([.top], 10)
            Text("we use startPosition for initial camera position")
                .padding([.top], 10)
                .foregroundColor(.orange)
            Map(initialPosition: startPosition)
                .mapStyle(.hybrid)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
