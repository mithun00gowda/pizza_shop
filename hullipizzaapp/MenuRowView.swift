//
//  MenuRowView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct MenuRowView: View {
    var item:MenuItem
    var body: some View {
        HStack{
            if let image = UIImage(named: "pizza"){
                Image(uiImage: image).resizable().scaledToFit()
                    .clipShape(Circle())
                    .padding(.trailing,-25)
                    .padding(.leading,-15)
            } else{
                Image("default")
            }
            VStack{
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.price,format: .currency(code: "USD"))
                }
                RatingView(rating: item.rating)
            }
        }
    }
}
	
#Preview {
    MenuRowView(item: testMenuItem)
}
