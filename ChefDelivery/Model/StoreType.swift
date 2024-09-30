//
//  StoreType.swift
//  ChefDelivery
//
//  Created by ifws on 30/09/24.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
