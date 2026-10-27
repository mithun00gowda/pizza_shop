//
//  OrderView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orders:OrderModel
    var body: some View {
        VStack{
            ZStack(alignment:.top){
                ScrollView{
                    ForEach($orders.orderItems){ order in
//                        Text(order.item.name)
                            
                        OrderRowView(item: order)
                            .padding(4)
                            .background(.regularMaterial,in:RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                            .padding(.bottom,5)
                            .padding([.leading,.trailing],7)
                    }
                }.padding(.top,65)
                HStack {
                    Text("Order Pizza").font(.system(size: 20)).bold()
                    Spacer()
                    
                }.padding()
                    .background(.ultraThinMaterial)
                
            }
            Button("Delete Order"){
                if  !orders.orderItems.isEmpty{orders.removeLast()}
            }.padding(5)
                .background(.regularMaterial,in: Capsule())
                .padding(7)
        }.background(Color("titles").opacity(0.7)).cornerRadius(10).shadow(color: Color(.blue),radius: 15,x: 6,y: 6)
    }
}

#Preview {
    OrderView(orders: OrderModel())
}
