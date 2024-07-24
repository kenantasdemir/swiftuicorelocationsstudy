//
//  ContentView.swift
//  swiftuilocationstudy
//
//  Created by kenan on 24.07.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var locationManager = LocationManager()
    var body: some View {
        VStack {
            Text("Latitude \(locationManager.location.coordinate.latitude)")
            Text("Longitude \(locationManager.location.coordinate.longitude)")
            Text("Speed \(locationManager.location.speed)")
        }
       
    }
}

#Preview {
    ContentView()
}
