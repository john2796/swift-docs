# Link

A control for navigation to a URL.

![](images/1.png)

```swift
struct ContentView: View {
  var body: some View {
    Link("View our Terms of Service",
      destination: URL(string: "https://google.com")!)
  }
}

struct ContentView_Provider: PreviewProvider {
  static var previews: some Views{
    ContentView()
  }
}
```
