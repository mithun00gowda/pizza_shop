//
//  ContentView.swift
//  hullipizzaapp
//
//  Created by user on 16/10/26.
//

import SwiftUI

struct ContentView: View {
    var menu:[MenuItem]
    @State private var orders:[OrderItem] = testOrders
    @State private var showOrder : Bool = false
    @State private var selectedMenuItem: MenuItem = noMenuItem
    var body: some View {
        VStack() {
            HeaderView().shadow(radius: 5)
            HStack {
                Text("\(orders.count) orders")
                Spacer()
                Button{
                    showOrder.toggle()
                }label: {
                    Image(systemName: showOrder ? "cart" : "menucard")
                        
                        
                }
                
            }.foregroundStyle(.white)
            .font(.title2)
            if(showOrder){
                OrderView(orders:  $orders)
            }else{
                MenuItemView(item:$selectedMenuItem).padding().background(.thinMaterial,in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu:menu, selectedItem: $selectedMenuItem)
                
            }
           
            
        }
        .padding()
        .background(.linearGradient(colors: [.cyan,Color("sky"),Color("titles"),.white], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    ContentView(menu:MenuModel().menu)
}
