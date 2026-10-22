//
//  OrderRowView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct OrderRowView: View {
    var item : Int
    var body: some View {
        HStack {
            Text("Your Order Item \(item)")
            Spacer()
            Text(100,format: .currency(code: "USD"))
            
        }
        .padding()
        .background(.regularMaterial)
        .cornerRadius(10)
    }
}

#Preview {
    OrderRowView(item: 1)
}
