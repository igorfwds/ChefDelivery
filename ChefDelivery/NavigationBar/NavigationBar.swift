//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by ifws on 19/09/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Spacer()
            Button(("R. Vergeiro , 3185")){
                print("Você clicou na navigation bar")
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            Spacer()
            Button(action: {
                print("Você clicou nas Notificações")
            }) {
                Image(systemName: "bell.badge")
            }
            .font(.title3)
            .foregroundColor(.red)
            
        }
    }
}

#Preview {
    NavigationBar()
        .previewLayout(.sizeThatFits)
        .padding()
}
