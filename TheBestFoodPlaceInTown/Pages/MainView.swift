//
//  MainView.swift
//  TheBestFoodPlaceInTown
//
//  Created by Murat Ceyhun Korpeoglu on 18.12.2022.
//

import Foundation
import UIKit

@IBDesignable class MainView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    func configure() {
        
    }
}
