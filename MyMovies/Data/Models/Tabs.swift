import Foundation

enum Tabs {
    case library, discover, search
    
    var title: String {
        switch self {
        case .library: "Library"
        case .discover: "Discover"
        case .search: "Search"
        }
    }
    
    var icon: String {
        switch self {
        case .library: "film.stack.fill"
        case .discover: "safari.fill"
        case .search: "magnifyingglass"
        }
    }
}
