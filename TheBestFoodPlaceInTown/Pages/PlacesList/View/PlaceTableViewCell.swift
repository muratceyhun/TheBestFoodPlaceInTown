//
//  PlaceTableViewCell.swift
//  TheBestFoodPlaceInTown
//
//  Created by Murat Ceyhun Korpeoglu on 2.02.2023.
//

import UIKit
import AlamofireImage

class PlaceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgPlace: UIImageView!
    @IBOutlet weak var lblPlaceName: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var imgLocation: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureImage(place: PlacesListViewModel) {
        imgPlace.af.setImage(withURL: place.imagePath)
        lblPlaceName.text = place.placeName
        lblDistance.text = place.distance
    }
}
