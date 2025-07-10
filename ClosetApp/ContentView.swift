import SwiftUI

struct ContentView: View {
    @State private var showCloset = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Welcome to ClosetApp")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                Text("Organize your wardrobe in style")
                    .foregroundStyle(.white.opacity(0.9))

                Button("Open My Closet") {
                    withAnimation(.spring()) {
                        showCloset = true
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(colors: [.purple, .pink],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            )
            .navigationDestination(isPresented: $showCloset) {
                ClosetView()
                    .transition(.move(edge: .trailing).combined(with: .opacity))
            }
        }
    }
}

#Preview {
    ContentView()
}
