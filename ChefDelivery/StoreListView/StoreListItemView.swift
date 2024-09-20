//
//  StoreListItemView.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import SwiftUI

struct StoreListItemView: View {
    
    let store : OrderType
    
    var body: some View {
        HStack {
            Image(store.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            Text(store.name)
                .font(.subheadline)
            
            Spacer()
        }
        .onTapGesture {
            print("Você clicou no \(store.name)")
        }
    }
}

#Preview {
    StoreListItemView(store: OrderType(id: 1, name: "Monstro burguer", image: "monstro-burger-logo"))
}
