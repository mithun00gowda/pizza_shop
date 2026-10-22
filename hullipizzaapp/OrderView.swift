//
//  OrderView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int] = [1,2,3,4,5]
    var body: some View {
        ZStack(alignment:.top){
            ScrollView{
                ForEach(orders,id: \.self){ order in
                    OrderRowView(item: order)
                        .padding(.bottom,5)
                        .padding([.leading,.trailing],7)
                }
            }.padding(.top,65)
            HStack {
                Text("Order Pizza").font(.system(size: 20)).bold()
                Spacer()
                HStack{
                    Image(systemName: orders.isEmpty ?"cart":  "cart.circle.fill")
                    Text(100,format: .currency(code: "USD"))
                }
            }.padding()
                .background(.ultraThinMaterial)
            
        }.background(Color("sky").opacity(0.7)).cornerRadius(10).shadow(color: Color(.blue),radius: 15,x: 6,y: 6)
    }
}

#Preview {
    OrderView()
}
