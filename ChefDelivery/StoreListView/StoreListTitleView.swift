//
//  StoreListTitleView.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import SwiftUI

struct StoreListTitleView: View {
    
    let title: String = "Lojas"
    
    var body: some View {
        HStack{
            Text(title)
                .font(.headline)
            
            Spacer()
        }
    }
}

#Preview {
    StoreListTitleView()
}
