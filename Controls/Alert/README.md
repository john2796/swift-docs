# Alert

## Basic

```swift
import SwiftUI

struct ContentView: View {
  @State private var showingAlert = false

  var body: some View {
        Button("Show alert") {
          showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
          Button("Delete", role: .destructive) {}
          Button("Cancel", role: .cancel) {}
        }
      }
    }

```

## Message

```swift
import SwiftUI

struct ContentView: View {
  @State private var showingAlert = false
  @State var post: Post

  var body: some View {
        Button("Show Alert") {
          showingAlert = true
        }
        .alert("Delete this post?", isPresented: $showingAlert, presenting: post) { post in
          Button(role: .destructive) {

          } label: {
            Text("Delete")
          }
          Button("Cancel", role: .cancel) {}
        } message { post in
          Text("Deleting this post will permanently remove \(post.title) form our server.")
        }
      }
    }

```

## Links that help

- [Hudson - how to show an alert](https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-an-alert)
