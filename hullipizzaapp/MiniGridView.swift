//
//  MiniGridView.swift
//  hullipizzaapp
//
//  Created by user on 29/10/26.
//

import SwiftUI

struct MiniGridView: View {
    var menu:[MenuItem]
    @State var selectedItem:MenuItem = noMenuItem
    let columnLayout = Array(repeating: GridItem(), count: 3)
    var body: some View {
        VStack{
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout){
                    ForEach(menu){item in
                        MenuItemTileView(
                            menuItem: item)
                        .onTapGesture{
                            selectedItem = item
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    MiniGridView(
        menu: MenuModel().menu
    )
}
