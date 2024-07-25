# Text

```swift
Text("Hamlet")
  .font(.title)
```

```swift
Text("by William Shakespeare")
  .font(.system(size: 12, weight: .light, design: .serif))
  .italic()
```

```swift
Text("To be, or not be, this is the question:")
  .frame(width: 100)
```

```swift
Text("Brevity is the soul of wit")
  .frame(width: 100)
  .lineLimit(1)
```

## Spcifier

```swift
Text("\(temperature, specifier: "%.2f")") // x2 decimal
```

```swift
Text("\(temperature, specifier: "%.0f")") // 0 decimal
```

## submitLabel

```swift

```

## Links that help

- https://developer.apple.com/documentation/swiftui/text
