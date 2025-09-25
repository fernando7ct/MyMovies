import Foundation

enum Tabs {
    case library, discover, search
    var title: String {
        switch self {
        case .library: return "Library"
        case .discover: return "Discover"
        case .search: return "Search"
        }
    }
    var icon: String {
        switch self {
        case .library: return "movieclapper.fill"
        case .discover: return "safari.fill"
        case .search: return "magnifyingglass"
        }
    }
}
