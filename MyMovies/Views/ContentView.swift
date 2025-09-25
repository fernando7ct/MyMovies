import SwiftUI

struct ContentView: View {
    @State private var activeTab: Tabs = .library
    @State private var searchText: String = ""
    
    var body: some View {
        TabView(selection: $activeTab) {
            Tab(Tabs.library.title, systemImage: Tabs.library.icon, value: .library) {
                LibraryScreen()
            }
            
            Tab(Tabs.discover.title, systemImage: Tabs.discover.icon, value: .discover) {
                DiscoverScreen()
            }
            
            Tab(Tabs.search.title, systemImage: Tabs.search.icon, value: .search, role: .search) {
                SearchScreen()
            }
        }
        .tabBarMinimizeBehavior(.onScrollDown)
        .searchable(text: $searchText, prompt: "Search for movie")
    }
}

#Preview {
    ContentView()
}
