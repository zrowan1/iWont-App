//
//  SettingsTabView.swift
//  iWon't
//
//  Created by Rowan Deschaux on 29/11/2021.
//

import SwiftUI

struct SettingsTabView: View {
    
    
    var body: some View {
        
        ZStack
        {
            
            backgroundColor.ignoresSafeArea()
            
            HStack
            {
                Button {
                    switchColorMode()
                } label: {
                    Text("Turn on Light Mode")
                }                
            }
            .frame(width: 350, height: 100)
            .background(.blue)
            .foregroundColor(Color.black)
            .padding(.bottom, 500)
            
            HStack
            {
                Text("COO")
            }
            .frame(width: 350, height: 100)
            .background(.red)
            .padding(.bottom, 200)

            HStack
            {
                Text("COOL")
            }
            .frame(width: 350, height: 100)
            .background(.blue)
            .padding(.top, 100)
            
            HStack
            {
                Text("COOL MAN")
            }
            .frame(width: 350, height: 100)
            .background(.red)
            .padding(.top, 400)
        }

 



    }

}

struct SettingsTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}
