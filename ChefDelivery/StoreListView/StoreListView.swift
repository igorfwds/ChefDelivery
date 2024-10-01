//
//  StoreListView.swift
//  ChefDelivery
//
//  Created by ifws on 20/09/24.
//

import SwiftUI

struct StoreListView: View {
    var body: some View {
        VStack {
            StoreListGroupView()
                .padding(.horizontal)
        }
    }
}

#Preview {
    StoreListView()
}
