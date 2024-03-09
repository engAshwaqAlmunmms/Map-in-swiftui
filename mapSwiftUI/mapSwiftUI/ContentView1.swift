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

    @State var region = MKCoordinateRegion(
        center: .init(latitude: 37.334_900,longitude: -122.009_020),
        span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        VStack {
            Text("Map In SwiftUI With Ashwaq !")
                .bold()
                .padding([.bottom], 50)
            Map(coordinateRegion: .constant(MKCoordinateRegion(
                center:  CLLocationCoordinate2D(
                    latitude: Double(northValue) ?? 0.0,
                    longitude: Double(eastValue) ?? 0.0),
                span: MKCoordinateSpan(
                  latitudeDelta: 0.5,
                  longitudeDelta: 0.5
               )
            )))
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
