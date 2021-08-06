//
//  ContentView.swift
//  Movie Tracker
//
//  Created by raiyan sharif on 7/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        HStack (){
//            Text("Hello").font(.largeTitle)
//            Image(systemName: "lightbulb")
//            Text("Good by").lineLimit(1)
//        }
//        Button(action: {
//            print("Hello")
//        }, label: {
//            Text("Tap")
//        })
        
        Button(action: {}, label: {
            HStack{
                Text("Tap Me")
                Image(systemName: "gamecontroller")
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
