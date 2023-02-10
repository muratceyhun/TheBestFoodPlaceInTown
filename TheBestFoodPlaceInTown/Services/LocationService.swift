//
//  LocationService.swift
//  TheBestFoodPlaceInTown
//
//  Created by Murat Ceyhun Korpeoglu on 18.12.2022.
//

import Foundation
import CoreLocation


enum Result<T> {
    case successfull(T)
    case failed(Error)
}


final class LocationService : NSObject {
    
    private let manager : CLLocationManager
    
    init(manager : CLLocationManager = .init()) {
        self.manager = manager
        super.init()
        self.manager.delegate = self
    }
    
    var newLocation : ((Result<CLLocation>) -> Void)?
    var changedLocation : ((Bool) -> Void)?
    
    var condition : CLAuthorizationStatus {
        return manager.authorizationStatus
    }
    
    
    func demandPermission() {
        manager.requestWhenInUseAuthorization()
    }
    
    func demandLocation() {
        manager.requestLocation()
    }
}


extension LocationService : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        newLocation?(.failed(error))
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.sorted(by: { $0.timestamp > $1.timestamp }).first {
            newLocation?(.successfull(location))
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .denied, .notDetermined, .restricted :
            changedLocation?(false)
            break
            
            
        default :
            changedLocation?(true)
        }
    }
}
