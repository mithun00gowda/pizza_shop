//
//  FevoriteCellView.swift
//  hullipizzaapp
//
//  Created by user on 29/10/26.
//

import SwiftUI

struct FavoriteCellView: View {
    var menuItem:MenuItem
    var body: some View {
        VStack{
            if let image = UIImage(named: "pizza"){
                Image(uiImage: image).resizable()
                    .scaledToFit()
                    .frame(maxHeight:50)
            } else{
                Image("default")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight:50)
                    .padding(5)
            }
            Text(menuItem.name).font(.caption2)
        }
    }
}

#Preview {
    FavoriteCellView(menuItem: testMenuItem)
}
