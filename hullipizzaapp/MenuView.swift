//
//  MenuView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct MenuView : View {
    var menu:[MenuItem]
    var body: some View {
        ScrollView{
            ForEach(menu){ item in
                MenuRowView(item:item)
            }
        }
    }
}

struct MenuView_Previews : PreviewProvider{
    static var previews: some View{
        MenuView(menu:MenuModel().menu)
    }
}
