//
//  ContentView1.swift
//  mapSwiftUI
//
//  Created by Ashwaq Alghamdi on 8.03.2024.
//

import SwiftUI
import MapKit

struct ContentView1: View {
    
    @State var northValue: String = ""
    @State var eastValue: String = ""

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
                .padding([.bottom], 50)
            Map(initialPosition:MapCameraPosition.region(
                MKCoordinateRegion(
                    center: CLLocationCoordinate2D(latitude: Double(northValue) ?? 0.0, longitude: Double(eastValue) ?? 0.0),
                    span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
                )
            ))
            
            Text("Write your Coordinators")
                .foregroundColor(.orange)
            HStack {
                TextField("N", text: $northValue)
                    .onChange(of: northValue) { oldValue, newValue in
                        northValue = newValue
                    }
                TextField("E", text: $eastValue)
                    .onChange(of: eastValue) { oldValue, newValue in
                        eastValue = newValue
                    }
            }.foregroundColor(.orange)
                .padding(.leading)
        }.padding()
    }
}

#Preview {
    ContentView1()
}
