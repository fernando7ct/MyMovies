import Foundation
import SwiftData

@Model class SearchEvent {
    var tmdbID: Int
    var title: String
    var occurredAt: Date = Date()
    
    init(tmdbID: Int, title: String, occurredAt: Date = .now) {
        self.tmdbID = tmdbID
        self.title = title
        self.occurredAt = occurredAt
    }
}
