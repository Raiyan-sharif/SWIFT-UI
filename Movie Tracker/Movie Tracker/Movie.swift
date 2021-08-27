//
//  Movie.swift
//  Movie Tracker
//
//  Created by raiyan sharif on 27/8/21.
//

import Foundation

struct Movie: Identifiable{
    var id = UUID()
    var title = "Hello"
    var rating = 3.0
    var seen = false
}

class MovieStorage: ObservableObject{
    @Published var movies = [Movie]()
}

