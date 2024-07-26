# Toggle

A control that toggles between on and off

```swift
import SwiftUI

struct ContentView: View {
  @State private var vibrateOnRing = true

  var body: some View {
    Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
      .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
```

## Links that help

- Apple docs
