//
//  MovieList.swift
//  Movie Tracker
//
//  Created by raiyan sharif on 27/8/21.
//

import SwiftUI

struct MovieList: View {
//    var movies = [ Movie(),Movie(),Movie()]
    @EnvironmentObject var movieStorage: MovieStorage
    var body: some View {
        NavigationView {
            List(movieStorage.movies){ movie in
                NavigationLink(
                    destination: MovieDetail(movie: movie,newMovie: false)){
                    Text(movie.title)
                    }
       
                
            }.navigationTitle("Movies").navigationBarItems(trailing:
                NavigationLink(
                    destination: MovieDetail(movie: Movie(),newMovie: true)){
                        Image(systemName: "plus")
                    }
            
            )
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
