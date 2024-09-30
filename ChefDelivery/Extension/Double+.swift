//
//  Double+.swift
//  ChefDelivery
//
//  Created by ifws on 30/09/24.
//

import Foundation

extension Double {
    func formatPrice()-> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
