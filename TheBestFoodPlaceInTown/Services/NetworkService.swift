//
//  NetworkService.swift
//  TheBestFoodPlaceInTown
//  Created by Murat Ceyhun Korpeoglu on 31.01.2023.
//

import Foundation
import Moya

private let apiKey = "s9EkOzfYBm6icskWVTYgSRg2Meg7up27sBVyAoum6ExBgGsAA1gevj7u2oOZGGvxi5lS8AiZzfwcl654DHsoDsb1dXiuc4v7UZHieIybvonMnoO4LQfqNXoY5U3ZY3Yx"

enum YelpService {
    
    enum DataSupplier : TargetType {
        
        case search (lat: Double, long: Double)
        var baseURL: URL {
            return URL(string: "https://api.yelp.com/v3/businesses")!
        }
        
        var path: String {
            switch self {
            case .search: return "/search"
            }
        }
        
        var method: Moya.Method {
            return .get
        }
        
        var task: Moya.Task {
            switch self {
            case let .search(lat, long):
                return .requestParameters(parameters: ["latitude": lat, "longitude": long, "limit": 3], encoding: URLEncoding.queryString)
            }
        }
        
        var headers: [String : String]? {
            return ["Authorization": "Bearer \(apiKey)"]
        }
        
        
    }
}
