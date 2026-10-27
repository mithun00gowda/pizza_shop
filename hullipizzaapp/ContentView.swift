//
//  ContentView.swift
//  hullipizzaapp
//
//  Created by user on 16/10/26.
//

import SwiftUI

struct ContentView: View {
    var menu:[MenuItem]
    @StateObject  var orders:OrderModel = OrderModel()
    @State private var showOrder : Bool = false
    @State private var selectedMenuItem: MenuItem = noMenuItem
    var body: some View {
        VStack() {
            HeaderView().shadow(radius: 5)
                .environment(\.colorScheme,.light)
            StatusBarView(showOrder: $showOrder)
            if(showOrder){
                OrderView(orders:  orders)
            }else{
                MenuItemView(item:$selectedMenuItem, orders: orders).padding().background(.thinMaterial,in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu:menu, selectedItem: $selectedMenuItem)
                
            }
           
            
        }
        .padding()
        .background(.linearGradient(colors: [.cyan,Color("sky"),Color("titles"),.white], startPoint: .top, endPoint: .bottom))
        .environmentObject(orders)
    }
}

#Preview {
    ContentView(menu:MenuModel().menu)
}
