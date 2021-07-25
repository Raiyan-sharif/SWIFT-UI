//
//  ContentView.swift
//  NBA Player Fun
//
//  Created by raiyan sharif on 9/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Image("gs").resizable()
                .aspectRatio(contentMode: .fit)
            
            Image("steph").clipShape(Circle()).background(Circle()).foregroundColor(.white).overlay(Circle().stroke(Color.white,lineWidth: 4)).offset(x:0, y: -90).padding(.bottom,-90).shadow(radius: 30 )
            
            Text("Stephen curry").font(.system(size: 40))
                .fontWeight(.heavy)
            StateText(stateName: "Age", stateValue: "31")
            StateText(stateName: "Height", stateValue: "6'3\"")
            StateText(stateName: "Weight", stateValue: "190lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
