//
//  PlaceDetailsView.swift
//  TheBestFoodPlaceInTown
//
//  Created by Murat Ceyhun Korpeoglu on 18.12.2022.
//

import Foundation
import UIKit
import MapKit


@IBDesignable class PlaceDetailsView : MainView {
    
    @IBOutlet weak var collectionView : UICollectionView!
    @IBOutlet weak var pageControl : UIPageControl!
    @IBOutlet weak var lblPrice : UILabel!
    @IBOutlet weak var lblTime : UILabel!
    @IBOutlet weak var lblLocation : UILabel!
    @IBOutlet weak var lblRate : UILabel!
    @IBOutlet weak var mapView : MKMapView!

    
    
    @IBAction func handleControl(_ sender : UIPageControl) {
        
    }

}
