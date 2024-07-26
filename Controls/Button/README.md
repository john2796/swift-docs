# Button

![](images/1.png)

```swift
import SwiftUI

struct ContentView: View {
    var body: View {
        HStack {
            Button("Sign In", action: signIn)
            Button("Sign Out", action: signOut)
        }
            .borderStyle(.bordered)
    }
    func signIn() {}
    func signOut() {}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

![](images/2.png)
`.buttonStyle(.automatic)`

![](images/3.png)
`.buttonStyle(.plain)`

## Simple

```swift
Button("Tap me") {
    print("tapped")
}
```

or

```swift
Button(action: {
    print("Button was tapped")
}) {
    Text("Tap me")
}
```

## With Image

```swift
Button(action: {
    print("Button was tapped")
}) {
    Image(systemName: "pencil")
}
```

## With Image and Text

```swift
Button(action: {
    print("Button was tapped")
}) {
    Image(systemName: "pencil")
    Text("Text")
}
```

> Tip: If you find that your images have become filled in with a color, for example showing as solid blue rather than your actual picture, this is probably SwiftUI coloring them to show that they are tappable. To fix the problem, use the `renderingMode(.original)` modifier to force SwiftUI to show the original image rather than the recolored version.

Links that help:

- https://developer.apple.com/documentation/swiftui/button
