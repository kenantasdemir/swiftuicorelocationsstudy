//
//  LocationManager.swift
//  swiftuilocationstudy
//
//  Created by kenan on 24.07.2024.
//

import Foundation
import CoreLocation
import CoreLocationUI

class LocationManager:NSObject,CLLocationManagerDelegate,ObservableObject{
    var clm = CLLocationManager()
    
    @Published var location = CLLocation()
    
    override init(){
        super.init()
        
        clm.desiredAccuracy = kCLLocationAccuracyBest
        clm.requestWhenInUseAuthorization()
        clm.startUpdatingLocation()
        clm.delegate = self
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations[locations.count-1]
    }
}
