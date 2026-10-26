//
//  OrderRowView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct OrderRowView: View {
   @Binding var item : OrderItem
    var body: some View {
        VStack {
            HStack {
                Text(item.item.name)
                Spacer()
                
            }
            HStack{
                Text(item.quantity,format: .number)
                Text(item.item.price,format: .currency(code: "USD")
                )
                Spacer()
                Text(item.extPrice,format: .currency(code: "USD"))
            }
           
        }
    }
}

#Preview {
    OrderRowView(item: .constant(testOrderItem))
}
