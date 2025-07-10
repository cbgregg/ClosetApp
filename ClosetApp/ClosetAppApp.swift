import SwiftUI

@main
struct ClosetAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                ClosetView()
                    .tabItem {
                        Label("Closet", systemImage: "tshirt.fill")
                    }
            }
        }
    }
}
