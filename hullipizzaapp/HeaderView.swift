//
//  HeaderView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
//            Image("appbar").resizable().scaledToFit().ignoresSafeArea()
            Text("Mithun Pizza Shop").font(.title).bold()
        }
    }
}

#Preview {
    HeaderView()
}
