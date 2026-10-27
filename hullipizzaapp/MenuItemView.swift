//
//  MenuItemView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct MenuItemView: View {
//    var item : Int
    @Binding var item:MenuItem
    @State private var addedItem:Bool = false
    @ObservedObject var orders : OrderModel
    var body: some View {
        VStack{
            
            HStack{
                Text(item.name)
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
                
                Text(item.description).font(.custom("Georgia", fixedSize: 18))
                
//                RatingView(rating: 5)
//                MenuRowView()
            }
            Spacer()
            VStack{
                Button {
                    addedItem.toggle()
                    orders.addOrder(item, quantity: 1)
                }label: {
                    HStack{
                        Text(item.price,format: .currency(code: "USD"))
                        Image(systemName: addedItem ? "cart" : "bag")
                    }.foregroundColor(.white)
                }.padding()
            }.disabled(item.id < 0)
            .padding(.horizontal,100)
            .background(.red,in: Capsule())
        }
    }
}

#Preview {
    MenuItemView(item: .constant(testMenuItem), orders: OrderModel())
}
