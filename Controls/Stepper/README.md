
# Stepper

Smart enough to bind to any number (i.e `Int`, `Double`)

```swift
import SwiftUI

struct ContentView: View {
  @State private var sleepAmount = 8.0

  var body: some View {
        Stepper(value: $sleepAmount) {
            Text("\(sleepAmount) hours")
        }
      }
    }

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
```

Limit range of steps like this.
```swift
Stepper(value: $sleepAmount, in: 4...12) {
    Text("\(sleepAmount) hours")
}
```

Adjust the step value
```swift
Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
    Text("\(sleepAmount) hours")
}
```

Format `%f`
```swift
Text("\(sleepAmount, specifier: "%.2f") hours")
}
```

Format `%g`
```swift
Text("\(sleepAmount, specifier: "%.2g") hours")
}
```

## Links that help

- https://www.hackingwithswift.com/books/ios-swiftui/entering-numbers-with-stepper
