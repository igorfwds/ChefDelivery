//
//  StoreListGroupView.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import SwiftUI

struct StoreListGroupView: View {
    
    let title: String = "Lojas"
    @State private var ratingFilter = 0
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        
        HStack{
            Text(title)
                .font(.headline)
            
            Spacer()
            
            Menu("Filtrar") {
                ForEach(1...5, id: \.self) { rating in
                    
                    Button {
                        ratingFilter = rating
                    } label: {
                        if rating > 1 {
                            Text("\(rating) estrelas ou mais")
                        }else {
                            Text("\(rating) estrela ou mais")
                        }
                    }
                }
            
            }
            .foregroundColor(.black)
            .font(.headline)
        }
        .padding(.horizontal)
        
        VStack(alignment: .leading, spacing: 30) {
                ForEach(filteredStores) { store in
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
