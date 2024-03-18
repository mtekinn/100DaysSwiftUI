import SwiftUI

struct LargerBlueTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func largeBlueTitleStyle() -> some View {
        self.modifier(LargerBlueTitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("This is wrap up part!")
            .largeBlueTitleStyle()
    }
}

#Preview {
    ContentView()
}
