//
//  ContentView.swift
//  ChefDelivery
//
//  Created by ifws on 19/09/24.
//

import SwiftUI

struct ContentView: View {
    
    private var service = HomeService()
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                    .padding(.horizontal, 15)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack (spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoreListView()
                    }
                }
            }
        }
        .onAppear {
            service.fetchData()
        }
    }
    
    
    //MARK: -Metods
    
    
    
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}
