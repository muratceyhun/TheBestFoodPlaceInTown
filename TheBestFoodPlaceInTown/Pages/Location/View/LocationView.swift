//
//  LocationView.swift
//  TheBestFoodPlaceInTown
//
//  Created by Murat Ceyhun Korpeoglu on 18.12.2022.
//

import UIKit

@IBDesignable class LocationView: MainView {
    
    @IBOutlet weak var btnAllow : UIButton!
    @IBOutlet weak var btnDeny : UIButton!
    
    var allowed : (() -> Void)?
    
    @IBAction func btnAllowClicked(_ sender : UIButton){
        allowed?()
    }
    
    @IBAction func btnDenyClicked(_ sender : UIButton){
    }
  

}
