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



        locationView.allowed = {
            self.locationService?.demandPermission()
            print("PERMİTTED")
        }
        




    }
    

    

}
