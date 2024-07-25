# Toolbar

## Single

![](images/1.png)
![](images/2.png)

```swift
import SwiftUI
struct ContentView: View {
  @State var showingAddItinerary = false

  var body: some View {
    NavigationStack {
      List(1..<20) { i in
        NavigationLink("Detail \(i)") {
          Text("Detail \(i)")
        }
      }
      .navigationTitle("NavigationStack")
      .toolbar {
        Button(action: {
          self.showAddItinerary.toggle()
        }) {
          Image(systemName: "plus")
        }
      }
      .sheet(isPresented: $sowingAddItinerary) {
        Text("Add Itinerary")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some Preview {
    ContentView()
      .preferredColorScheme(.dark)
  }
}
```

## Single Placement

![](images/3.png)

```swift
struct AddItineraryView: View {
  var body: some View {
    Text("Hello World")
      .toolbar {
        ToolBarItem(placement: .navigationBarTrailing) {
          Button("Trailing") {
              print("Trailing")
          }
        }
        ToolBarItem(placement: .navigationBarLeading) {
          Button("Leading") {
              print("Pressed")
          }
        }
        ToolBarItem(placement: .bottomBar) {
          Button("Bottom") {
              print("Pressed")
          }
        }
      }
  }
}
```

## Multi

![](images/4.png)

```swift
import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      List(1..<20) { i in
        NavigationLink("Detail \(i)") {
          Text("Detail \(i)")
        }
      }
      .navigationTitle("NavigationStack")
      .toolbar {
        ToolbarItemGroup(placement: .naviationTrailing) {
          Button(action: {
            print("Share")
          }) {
            Image(systemName: "square.and.arrow.up")
          }

          Button(action: {
            print("Like")
          }) {
            Image(systemName: "heart")
          }
          Button(action: {
            self.showingAddItinerary.toggle()
          }) {
            Image(systemName: "plus")
          }
        }
      }
      .sheet(isPresented: $showingAddItinerary) {
        Text("Add itinerary")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.dark)
  }
}
```

## Full screen take over

```swift
struct ParentView: View {
  .fullScreenCover(isPresented: $showingAddItinerary) {
    AddItineraryView()
  }
}
struct AddItineraryView: View {
  var body: some View {
    NavigationStack {
      .toolbar {
        ToolbarItem(placement: .navigationTrailing) {
          Button("Add") {
            print("Trailing")
          }
        }
        ToolbarItem(placement: .navigationBarLeading) {
          Button("Cancel") {
            print("Pressed")
          }
        }
      }
      .navigationTitle("New Itinerary")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}
```

![](images/5.png)
