//
//  MenusTabView.swift
//  iWon't
//
//  Created by Rowan Deschaux on 29/11/2021.
//

import SwiftUI

struct MenusTabView: View {
    

    
    var body: some View {
        
        ZStack
        {
            backgroundColor.ignoresSafeArea()
            
            ScrollView
            {
                LazyVStack(spacing: 20){
                    ForEach(0..<7) {
                        Text(rowan.getCouponNaam(getal: $0))

                        
                    }
                    .frame(width: 300, height: 160)
                    .background(
                        Image("starbucksBackground")
                    )
                    
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .frame(maxWidth: .infinity)
                    
                }

            }
            .frame(width: 400)
            .padding(.bottom)
                        
        }
        .frame(width: 400)

        
    }
}



struct MenusTabView_Previews: PreviewProvider {
    static var previews: some View {
        MenusTabView()
    }
}
