//
//  PlayerRow.swift
//  NBA Player Fun
//
//  Created by raiyan sharif on 25/7/21.
//

import SwiftUI

struct PlayerRow: View {
    var player:Player
    var body: some View {
        HStack {
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle().foregroundColor(player.team.color))
            Text(player.name).font(.largeTitle).minimumScaleFactor(0.5).lineLimit(1)
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[1]).previewLayout(.fixed(width: 500, height: 100))
    }
}
