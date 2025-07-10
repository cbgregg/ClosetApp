import SwiftUI

struct ItemDetailView: View {
    let item: ClothingItem
    @State private var rotation = 0.0

    var body: some View {
        VStack(spacing: 30) {
            Circle()
                .fill(item.color)
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
                .rotationEffect(.degrees(rotation))
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        rotation = 360
                    }
                }
            Text(item.name)
                .font(.largeTitle.bold())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground).ignoresSafeArea())
    }
}

#Preview {
    ItemDetailView(item: ClothingItem(name: "Preview", color: .blue))
}
