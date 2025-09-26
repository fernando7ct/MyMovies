import SwiftUI
import SwiftData

struct SearchingView: View {
    @Query private var searches: [SearchEvent]
    
    var body: some View {
        List {
            if !searches.isEmpty {
                Section {
                    ForEach(searches) { event in
                        
                    }
                } header: {
                    HStack {
                        Text("Recently Searched")
                        
                        Spacer()
                        
                        Button("Clear", role: .destructive) {
                            
                        }
                    }
                }
            }
        }
        .overlay {
            ContentUnavailableView("No Recent Searches", systemImage: "magnifyingglass", description: Text("Your recent searches will appear here"))
        }
        .listStyle(.plain)
    }
}

#Preview {
    SearchScreen()
}
