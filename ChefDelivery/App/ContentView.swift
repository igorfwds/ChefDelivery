//
//  ContentView.swift
//  ChefDelivery
//
//  Created by ifws on 19/09/24.
//

import SwiftUI

struct ContentView: View {
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
            fetchData()
        }
    }
    
    
    //MARK: -Metods
    
    func fetchData() {
        guard let url = URL(string: "https://private-67b4b-igorfwds.apiary-mock.com/home") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                let storeObjects = try? JSONDecoder().decode([StoreType].self, from: data)
                print(storeObjects)
            }
        }.resume()
    }
    
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}
