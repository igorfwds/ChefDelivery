//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import SwiftUI

struct OrderTypeView: View {
    
    let orderType: OrderType
    
    var body: some View {
        VStack (spacing: 5) {
            Image(orderType.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .fixedSize(horizontal: false, vertical: true)
            Text(orderType.name)
                .font(.system(size: 10))
                .fontWeight(.bold)
        }
        .frame(width: 70, height: 100)
        .onTapGesture {
            print("Você clicou em \(orderType.name)")
        }
    }
}

#Preview {
    OrderTypeView(orderType: OrderType(id: 1, name: "Restaurantes", image: "hamburguer"))
        .previewLayout(.sizeThatFits)
}
