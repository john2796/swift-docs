# ConfirmationDialog

Like an alertSheet from UIKit. MultiButton select at the bottom of the screen.

```swift
import SwiftUI

struct ContentView: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white

    var body: some View {
        Text("Hello, World")
            .frame(width: 300, height: 300)
            .background(background)
            .onTapGesture {
                showingConfirmation = true
            }
            .confirmationDialog("Change background", isPresented: $showingConfirmation) {
                Button("Red") { background = .red }
                Button("Green") { background = .green }
                Button("Blue") { background = .blue }
                Button("Cancel", role: .cancel) { }
            } message {
                Text("Select a new color")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

Links that help:

- https://www.hackingwithswift.com/books/ios-swiftui/showing-multiple-options-with-confirmationdialog
