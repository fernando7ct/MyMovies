import SwiftUI
import SwiftData

@main
struct MyMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Movie.self, SearchEvent.self])
    }
}
