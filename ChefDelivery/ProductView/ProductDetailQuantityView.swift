//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by ifws on 02/10/24.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
    let product: ProductType
    @State private var productCount = 1
    var body: some View {
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
    }
}

#Preview {
    ProductDetailQuantityView(product: storesMock[0].products[0])
}
