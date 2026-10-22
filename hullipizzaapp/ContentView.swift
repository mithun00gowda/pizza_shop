//
//  ContentView.swift
//  hullipizzaapp
//
//  Created by user on 16/10/26.
//

import SwiftUI

struct ContentView: View {
    var showOrder : Bool = true
    var body: some View {
        VStack() {
            HeaderView().shadow(radius: 5)
            if(showOrder){
                OrderView()
            }else{
                MenuItemView().padding().background(.thinMaterial,in: RoundedRectangle(cornerRadius: 10))
                MenuView()
                
            }
           
            
        }
        .padding()
        .background(.linearGradient(colors: [.cyan,Color("sky"),Color("titles"),.white], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
}
