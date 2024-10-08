//
//  StoreType.swift
//  ChefDelivery
//
//  Created by ifws on 30/09/24.
//

import Foundation

struct StoreType: Identifiable, Decodable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
    let distance: Double
    
    private enum CodingKeys: String, CodingKey {
        case id, name, location, stars, products, distance
        case logoImage = "logo_image"
        case headerImage = "header_image"
    }
    
}
