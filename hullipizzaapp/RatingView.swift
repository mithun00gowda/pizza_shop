//
//  RatingView.swift
//  hullipizzaapp
//
//  Created by user on 17/10/26.
//

import SwiftUI


struct RatingView: View {
    
    var rating:Int
    var body: some View {
        HStack(alignment:.bottom) {
            ForEach(1...6,id: \.self){ total in
                VStack{
                    Image(systemName: total > rating ? "circle" :  "fork.knife.circle.fill")
                }
            }
        }
    }
}

#Preview {
    RatingView(rating: 4)
}
