//
//  PlayerList.swift
//  NBA Player Fun
//
//  Created by raiyan sharif on 25/7/21.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players){
                player in
                NavigationLink(
                    destination: ContentView(player: player)) {
                    PlayerRow(player: player).frame(height:60)
                }
            }.navigationBarTitle(Text("NBA Finals Players"))
        }.colorScheme(.light)
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
