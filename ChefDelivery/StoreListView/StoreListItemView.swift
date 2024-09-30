//
//  StoreListItemView.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import SwiftUI

struct StoreListItemView: View {
    
    let store : StoreType
    
    var body: some View {
        HStack {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            Text(store.name)
                .font(.subheadline)
            
            Spacer()
        }
        
    }
}

#Preview {
    StoreListItemView(store: storesMock[0])
}
