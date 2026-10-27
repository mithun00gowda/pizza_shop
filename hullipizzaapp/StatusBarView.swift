//
//  StatusBarView.swift
//  hullipizzaapp
//
//  Created by user on 27/10/26.
//

import SwiftUI

struct StatusBarView: View {
    @EnvironmentObject  var orders:OrderModel
    @Binding var showOrder:Bool
    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) orders")
            Spacer()
            Button{
                showOrder.toggle()
            }label: {
                Image(systemName: showOrder ? "cart" : "menucard")
                    
                    
            }
            Spacer()
            HStack{
                Image(systemName: orders.orderItems.isEmpty ?"cart":  "cart.circle.fill")
                
                Text(orders.orderTotal,format: .currency(code: "USD"))
            }
        }.foregroundStyle(.black)
        .font(.title2)
    }
}

#Preview {
    StatusBarView(showOrder: .constant(false)).environmentObject(OrderModel())
}
