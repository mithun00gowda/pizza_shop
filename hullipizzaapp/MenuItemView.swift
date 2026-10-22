//
//  MenuItemView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct MenuItemView: View {
//    var item : Int
    var body: some View {
        VStack{
            
            HStack{
                Text("Margherita Mithun Pizza")
                    .font(.title2)
                    .fontWeight(.semibold)  .foregroundStyle(.black)
                    .padding(.leading)
                    
                if let image = UIImage(named: "pizza"){
                    Image(uiImage: image).resizable().scaledToFit().cornerRadius(10)
                }else{
                    Image("pizza")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10).rotationEffect(.degrees(180))
                }
            }.background(.linearGradient(colors: [Color("titles"),Color("sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing),in: Capsule())
                .shadow(color: .teal,radius: 5,x: 8,y: 8)
            VStack(alignment:.center){
                
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod metus eu maximus aliquam. Nullam nec ipsum porta, dictum eros ut, hendrerit ligula. Suspendisse potenti. Vivamus cursus metus lacus, nec venenatis ante imperdiet eu. Suspendisse potenti. Aenean id convallis nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci varius.").font(.custom("Georgia", fixedSize: 18))
                
//                RatingView(rating: 5)
//                MenuRowView()
            }
        }
    }
}

#Preview {
    MenuItemView()
}
