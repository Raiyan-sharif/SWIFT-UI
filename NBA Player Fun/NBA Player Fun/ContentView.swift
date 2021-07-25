//
//  ContentView.swift
//  NBA Player Fun
//
//  Created by raiyan sharif on 9/7/21.
//

import SwiftUI

struct ContentView: View {
    var player:Player
    var body: some View {
        
        VStack{
            
            Image(player.team.imageName).resizable()
                .aspectRatio(contentMode: .fit)
                
            
            Image(player.imageName).clipShape(Circle()).background(Circle()).foregroundColor(.white).overlay(Circle().stroke(Color.white,lineWidth: 4)).offset(x:0, y: -90).padding(.bottom,-90).shadow(radius: 30 )
            
            Text(player.height).font(.system(size: 40))
                .fontWeight(.heavy)
            StateText(stateName: "Age", stateValue: "\(player.age)")
            StateText(stateName: "Height", stateValue: player.height)
            StateText(stateName: "Weight", stateValue: "\(player.weight)lbs")
            Spacer()
                
        }.edgesIgnoringSafeArea(.top)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(player: players[0])
    }
}
