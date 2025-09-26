import SwiftUI
import SwiftData

struct SearchScreen: View {
    @State private var searchText: String = ""
    @FocusState private var isSearchFocused: Bool
    
    var body: some View {
        NavigationStack {
            Group {
                if isSearchFocused {
                    SearchingView()
                } else {
                    ScrollView(.vertical) {
                        
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Search for movie")
            .searchFocused($isSearchFocused)
            .overlay(alignment: .topLeading) {
                if !isSearchFocused {
                    Text("Search")
                        .padding()
                        .font(.largeTitle)
                        .bold()
                        .offset(y: -55)
                }
            }
        }
    }
}

#Preview {
    TabView {
        Tab(Tabs.search.title, systemImage: Tabs.search.icon, role: .search) {
            SearchScreen()
        }
    }
    .tabBarMinimizeBehavior(.onScrollDown)
}
