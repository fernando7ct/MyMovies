import SwiftUI
import SwiftData

struct LibraryScreen: View {
    @Query private var movies: [Movie]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                
            }
            .overlay {
                if movies.isEmpty {
                    ContentUnavailableView("Your Library Is Empty", systemImage: "movieclapper.fill", description: Text("Movies you add to your library will appear here"))
                }
            }
            .scrollDisabled(movies.isEmpty)
            .scrollIndicators(.hidden)
            .overlay(alignment: .topLeading) {
                Text("Library")
                    .padding()
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}

#Preview {
    TabView {
        Tab(Tabs.library.title, systemImage: Tabs.library.icon) {
            LibraryScreen()
        }
    }
    .tabBarMinimizeBehavior(.onScrollDown)
}
