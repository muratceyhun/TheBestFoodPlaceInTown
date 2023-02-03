//
//  Models.swift
//  TheBestFoodPlaceInTown
//
//  Created by Murat Ceyhun Korpeoglu on 1.02.2023.
//

import Foundation


struct Business: Codable {
    let id: String
    let name: String
    let imageUrl: URL
    let distance: Double
}

struct AllData: Codable {
    let businesses: [Business]
}

struct PlacesListViewModel {
    let id: String
    let placeName: String
    let imagePath: URL
    let distance: String
    
    init(place: Business) {
        self.placeName = place.name
        self.id = place.id
        self.imagePath = place.imageUrl
        self.distance = "\(String(format: "%.2f", (place.distance/1000)))"
    }
}
