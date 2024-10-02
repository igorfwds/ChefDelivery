//
//  StoreListGroupView.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import SwiftUI

struct StoreListGroupView: View {
    
    let title: String = "Lojas"
    
    let distances: [Double] = [0.5, 1.0, 2.5, 5.0, 10.0]
    @State private var ratingFilter = 0
    @State private var distanceFilter = 50.0
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter && store.distance <= distanceFilter
        }
    }
    
    var body: some View {
        
        HStack{
            Text(title)
                .font(.headline)
            
            Spacer()
            
            Menu("Estrelas") {
                
                Button {
                    ratingFilter = 0
                } label: {
                    Text("Limpar Filtro")
                }
                
                Divider()
                
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
            
            Menu("Distância") {
                
                Button {
                    distanceFilter = 50.0
                } label: {
                    Text("Limpar Filtro")
                }
                
                Divider()
                
                ForEach(0 ..< distances.count) { storeDistance in
                    
                    Button {
                        distanceFilter = distances[storeDistance]
                    } label: {
                        if storeDistance == 0 {
                            Text("Filtrar Lojas a 500 m")
                        }else{
                            Text("Filtrar Lojas a \(Int(distances[storeDistance]) ) Km")
                        }
                    }
                    
                }
            }
            .foregroundColor(.black)
            .font(.headline)
            
        }
        .padding(.horizontal)
        
        VStack(alignment: .leading, spacing: 30) {
            
            if filteredStores.isEmpty {
                Text("Nenhum resultado encontrado")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color("ColorRed"))
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
            }else {
                ForEach(filteredStores) { store in
                    NavigationLink{ StoreDetailView(store: store)
                    } label: {
                        StoreListItemView(store: store)
                        }
                    }
            }
            
        }
        .padding(.leading)
        
        .foregroundColor(.black)
    }
}

#Preview {
    StoreListGroupView()
}
