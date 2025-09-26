import Foundation
import SwiftData

@Model class Movie {
    var tmdbID: Int
    var title: String
    var watched: Bool = false
    var addedAt: Date = Date()
    
    init(tmdbID: Int, title: String, watched: Bool = false, addedAt: Date = .now) {
        self.tmdbID = tmdbID
        self.title = title
        self.watched = watched
        self.addedAt = addedAt
    }
}
