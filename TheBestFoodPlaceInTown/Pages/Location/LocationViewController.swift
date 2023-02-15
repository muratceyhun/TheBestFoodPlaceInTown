//
//  LocationViewController.swift
//  TheBestFoodPlaceInTown
//
//  Created by Murat Ceyhun Korpeoglu on 18.12.2022.
//

import UIKit

class LocationViewController: UIViewController {
    
    
    @IBOutlet weak var locationView : LocationView!
    
    var locationService : LocationService?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationService = LocationService()
        setupLocationViewObserver()

    }
    
    func setLocationService(locationService: LocationService) {
       self.locationService = locationService
        
   }
    
    private func setupLocationViewObserver() {
        locationView?.allowed = { [weak self] in
            self?.locationService?.demandPermission()
            print("PERMİTTED")
            print(self?.locationService)
        }
        
    }

    

}
