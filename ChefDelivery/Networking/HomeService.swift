//
//  HomeService.swift
//  ChefDelivery
//
//  Created by ifws on 08/10/24.
//

import Foundation

struct HomeService {
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
