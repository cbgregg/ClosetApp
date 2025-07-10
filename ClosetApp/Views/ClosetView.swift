import SwiftUI

struct ClosetView: View {
    private let items: [ClothingItem] = [
        ClothingItem(name: "Red Shirt", color: .red),
        ClothingItem(name: "Blue Jeans", color: .blue),
        ClothingItem(name: "Green Jacket", color: .green),
        ClothingItem(name: "Black Shoes", color: .black)
    ]

    var body: some View {
        NavigationStack {
            List(items) { item in
                NavigationLink(value: item) {
                    HStack {
                        Circle()
                            .fill(item.color)
                            .frame(width: 20, height: 20)
                        Text(item.name)
                    }
                }
            }
            .navigationDestination(for: ClothingItem.self) { item in
                ItemDetailView(item: item)
            }
            .navigationTitle("My Closet")
        }
    }
}

#Preview {
    ClosetView()
}
