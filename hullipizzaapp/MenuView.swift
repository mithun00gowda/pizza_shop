//
//  MenuView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct MenuView : View {
    var body: some View {
        VStack(alignment:.center) {
            Text("Pizza Menu").font(Font.system(size: 20)).bold()
            MenuRowView()
        }
    }
}

struct MenuView_Previews : PreviewProvider{
    static var previews: some View{
        MenuView()
    }
}
