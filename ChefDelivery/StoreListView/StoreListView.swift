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
            StoreListTitleView()
                .padding(.horizontal)
            StoreListGroupView()
                .padding(.horizontal)
        }
    }
}

#Preview {
    StoreListView()
}
