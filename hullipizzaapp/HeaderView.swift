//
//  HeaderView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders : OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass:UserInterfaceSizeClass?
    var body: some View {
        VStack {
            if(vSizeClass ?? .regular) != .compact{
                ZStack(alignment:.bottomTrailing) {
                                Image("surfBanner").resizable().scaledToFit().ignoresSafeArea()
                    Text("Mithun Pizza Shop").foregroundColor(.white).font(.title).bold()
                }
            }else {
                HStack(alignment:.bottom){
                    Image("surfBanner").resizable().scaledToFit().ignoresSafeArea()
                    Text("Mithun Pizza Shop").font(.title).bold()
                }
            }
            
        }.background(.ultraThinMaterial)
    }
}

#Preview {
    HeaderView().environmentObject(OrderModel())
}
