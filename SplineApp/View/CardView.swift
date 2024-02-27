//
//  CardView.swift
//  SplineApp
//
//  Created by Aniket Bane on 27/02/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var isAnimating : Bool = false
    
    var body: some View {
        VStack () {
            Render3DView()
                .frame(height: 600)
                .ignoresSafeArea()
                .cornerRadius(20)
            
            Text("apple")
                .foregroundStyle(Color.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
            
            //Button : Purchase
            PurchaseButtonView()
            
        } // : VStack
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
//        .background(LinearGradient(colors: [Color.black,Color.gray], startPoint: .top, endPoint: .bottom))
//        .cornerRadius(20)
//        .ignoresSafeArea()
    }
    
    
}

#Preview {
    CardView()
}
