//
//  PlacesTableViewCell.swift
//  TheBestFoodPlaceInTown
//
//  Created by Murat Ceyhun Korpeoglu on 18.12.2022.
//

import UIKit

class PlacesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgPlace : UIImageView!
    @IBOutlet weak var imgLocation : UIImageView!
    @IBOutlet weak var lblPlaceName : UILabel!
    @IBOutlet weak var lblDistance : UILabel!
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
