//
//  ContentView.swift
//  ChefDelivery
//
//  Created by ifws on 19/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
                .padding(.horizontal, 15)
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    OrderTypeGridView()
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}
