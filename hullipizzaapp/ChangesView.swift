//
//  ChangesView.swift
//  hullipizzaapp
//
//  Created by user on 29/10/26.
//

import SwiftUI

struct ChangesView: View {
    @State private var count:Int  = 0
    @State private var shape:String = ""
    
    var body: some View {
        VStack{
            Image(systemName: "\(count)" + shape).resizable().scaledToFit()
            Stepper("Count \(count)",value: $count,step: 1).font(   .title)
            Spacer()
        }
        .onChange(of: count){ oldvalue, newvalue in
            shape = (newvalue % 2 == 0) ? ".circle" : ".square"
        }
    }
}

#Preview {
    ChangesView()
}
