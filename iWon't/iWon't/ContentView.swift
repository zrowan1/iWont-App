//
//  ContentView.swift
//  iWon't
//
//  Created by Rowan Deschaux on 25/11/2021.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        
        ZStack
        {
            backgroundColor.ignoresSafeArea()
            if self.isActive
            {
                ContentView()
            }
            else
            {
                Text(Image("LogoV2"))
            }
        }
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
                
    }
}

struct ContentView: View {
    
    let rookBoxColor = Color(red: 149/255, green: 152/255, blue: 156/255)
    
    var body: some View {
        TabView
        {
            
            ZStack
            {
            backgroundColor.ignoresSafeArea()
            VStack
            {
                HStack
                {
                    Spacer()
                    Text("Punten: ") +
                    Text("\(rowan.getAantalPuntenGebruiker())")
                        .foregroundColor(kiesPuntenKleur())
                        .font(.custom("Apple Chancery", size: 30))
                    
                }
                .padding(20)
                .font(.title)
                
                HStack{}
                .frame(width: 250, height: 50)
                
                HStack
                {
                    Text("\(rowan.getAantalKeerGerooktVandaag())\n") +
                    Text("Keer gerookt vandaag")
                }
                .frame(width: 250, height: 200)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .background(rookBoxColor)
                .border(Color.black, width: 5)
                
                HStack
                {
                    Text(voortgangTekst)
                }
                .frame(width: 250, height: 100)
                .font(.largeTitle)
                .background(rookBoxColor)
                .border(Color.black, width: 5)
                .padding(.top, 60)
                Spacer()

            }
            }
            .tabItem {
                Image(systemName: "house.fill")
            }
            GraphTabView()
            .tabItem {
                Image(systemName: "chart.xyaxis.line")
            }
            MenusTabView()
            .tabItem {
                Image(systemName: "giftcard.fill")
            }
            SettingsTabView()
            .tabItem {
                Image(systemName: "hammer.circle.fill")
                }
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        
        }
        .accentColor(Color.blue)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
