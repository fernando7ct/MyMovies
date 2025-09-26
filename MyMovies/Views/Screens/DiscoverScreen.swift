import SwiftUI

struct DiscoverScreen: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                
            }
            .overlay(alignment: .topLeading) {
                Text("Discover")
                    .padding()
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}

#Preview {
    DiscoverScreen()
}
