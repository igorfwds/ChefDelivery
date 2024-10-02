//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by ifws on 01/10/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    
    var body: some View {
        VStack {
            
            ProductDetailHeaderView(product: product)
            
            Spacer()
            
            ProductDetailQuantityView(product: product)
                       
            Spacer()
            
            ProductDetailButtonView()
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button {
            print("adicionou ao carrinho")
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Adicionar ao Carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10 , x: 6, y: 8)
        }
    }
}
