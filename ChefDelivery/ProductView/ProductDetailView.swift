//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by ifws on 01/10/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productCount = 1
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                
                    Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top)
                
                    Text(product.description)
                    .padding(.horizontal)
                
                    Text(product.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
                
                
            }
            
            Spacer()
            
            VStack(alignment: .center) {
                Text("Quantidade")
                    .bold()
                    .font(.title3)
                
                HStack {
                    Button {
                        if productCount > 1 {
                            productCount -= 1
                        }
                    }label: {
                        Image(systemName: "minus.circle.fill")
                    }
                    .font(.title)
                    .bold()
                    
                    Text("\(productCount)")
                    
                    Button {
                        productCount += 1
                    }label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .font(.title)
                    .bold()
                }
                
            }
            
            Spacer()
            
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
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
