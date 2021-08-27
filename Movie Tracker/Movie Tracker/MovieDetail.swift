//
//  MovieDetail.swift
//  Movie Tracker
//
//  Created by raiyan sharif on 7/8/21.
//

import SwiftUI

struct MovieDetail: View {
    @State var movie: Movie
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var movieStorage: MovieStorage
    let newMovie: Bool
    
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
            Text("Title").font(.caption).foregroundColor(.green)
                TextField("Movie Title", text: $movie.title)
            }
            Section{
                Text("Rating").font(.caption).foregroundColor(.green)
                HStack{
                    Spacer()
                    Text(String(repeating: "⭐️", count: Int(movie.rating))).foregroundColor(.yellow).font(.title)
                    Spacer()
                }
                Slider(value: $movie.rating, in: 0...5,step: 1.0)
            }
            Section{
                Text("Seen").font(.caption).foregroundColor(.green)
                Toggle(isOn: $movie.seen, label: {
                    if movie.title == ""{
                        Text("Has Seen this movie")
                    }
                    else{
                        Text("I Have Seen \(movie.title)")
                    }
                })
            }
            Section{
                Button(action: {
                    if newMovie{
                        movieStorage.movies.append(movie)
                    }else{
                        for x in 0..<movieStorage.movies.count{
                            if movieStorage.movies[x].id == movie.id{
                                movieStorage.movies[x] = movie
                                
                            }
                        }
                    }
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }.disabled(movie.title.isEmpty)
                
            }
        }.listStyle(GroupedListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: Movie(title: "movie", rating: 5.0, seen: true), newMovie: true)
    }
}
