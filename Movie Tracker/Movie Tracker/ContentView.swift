//
//  ContentView.swift
//  Movie Tracker
//
//  Created by raiyan sharif on 7/8/21.
//

import SwiftUI

struct ContentView: View {
    @State var title = ""
    @State var rating = 3.0
    @State var seen = false
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
        
//        Button(action: {}, label: {
//            HStack{
//                Text("Tap Me")
//                Image(systemName: "gamecontroller")
//            }
//        }
//        ).padding().background(Color.blue).cornerRadius(10).foregroundColor(.white)
        // Controls
        
        List {
            Section{
            TextField("Movie Title", text: $title)
            }
            Section{
                Text("Rating").font(.caption).foregroundColor(.gray)
                HStack{
                    Spacer()
                    Text(String(repeating: "⭐️", count: Int(rating))).foregroundColor(.yellow).font(.title)
                    Spacer()
                }
                Slider(value: $rating, in: 0...5,step: 1.0)
            }
            Section{
                Toggle(isOn: $seen, label: {
                    if title == ""{
                        Text("Has Seen this movie")
                    }
                    else{
                        Text("I Have Seen \(title)")
                    }
                })
            }
            Section{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                })
            }
        }.listStyle(GroupedListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
