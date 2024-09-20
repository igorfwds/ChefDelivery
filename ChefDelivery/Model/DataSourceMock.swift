//
//  DataSourceMock.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1 , name: "Restaurantes", image: "hamburguer"),
    OrderType(id: 2 , name: "Mercado", image: "mercado"),
    OrderType(id: 3 , name: "Farmácia", image: "farmacia"),
    OrderType(id: 4 , name: "Pet", image: "petshop"),
    OrderType(id: 5 , name: "Descontos", image: "descontos"),
    OrderType(id: 6 , name: "Bebidas", image: "bebidas"),
    OrderType(id: 7 , name: "Gourmet", image: "gourmet"),
]

let stores : [OrderType] = [
    OrderType(id: 1, name: "Monstro Burguer", image: "monstro-burger-logo"),
    OrderType(id: 2, name: "Food Court", image: "food-court-logo"),
    OrderType(id: 3, name: "Panda Açai", image: "acai-panda-logo"),
    OrderType(id: 4, name: "Padaria", image: "bakery-logo"),
    OrderType(id: 5, name: "Carbron", image: "carbron-logo"),
]
