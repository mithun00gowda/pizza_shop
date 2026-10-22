//
//  MenuRowView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        ScrollView{
            ForEach(1...25,id: \.self){ item in
               
                HStack {
                    Image(systemName: "\(item).circle.fill").font(.title)
                    HStack{
                        Image("pizza").resizable().scaledToFit()
                            .clipShape(.circle)
                            .padding(.top,15)
                            .padding(.leading,-1)
                        VStack{
                            Text("Margherita")
                            RatingView(rating: 4)
                        }
                    }
//                    MenuItemView(item: item)
                }
            }
        }
    }
}
	
#Preview {
    MenuRowView()
}
