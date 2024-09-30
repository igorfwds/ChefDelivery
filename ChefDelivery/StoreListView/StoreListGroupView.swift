//
//  StoreListGroupView.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import SwiftUI

struct StoreListGroupView: View {
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { store in
                    NavigationLink{ StoreDetailView(store: store)
                    } label: {
                        StoreListItemView(store: store)
                        }
                    }
            }
        .foregroundColor(.black)
    }
}

#Preview {
    StoreListGroupView()
}
