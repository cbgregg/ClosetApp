import SwiftUI

struct ClothingItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let color: Color
}
