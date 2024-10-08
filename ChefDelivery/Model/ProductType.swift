//
//  ProductType.swift
//  ChefDelivery
//
//  Created by ifws on 30/09/24.
//

import Foundation

struct ProductType: Identifiable, Decodable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ \(price.formatPrice())"
    }
    
}
