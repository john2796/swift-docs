# SwiftUI

## Creating a form
Forms are scrolling lists of static controls like text and images, but can also include user interactive controls like text fields, toggle switches, buttons, and more.
```swift
var body: some View {
    Form {
        Section {
             Text("Hello, world!")
        }
        Section {
             Text("Hello, world!")
             Text("Hello, world!")
        }
    }
}
```

## Adding a navigation bar
```swift
var body: some View {
    NavigationStack {
        Form {
            Section {
                Text("Hello, world!")
            }
        }
        .navigationTitle("SwiftUI")
        .navigationTitleDisplayMode(.inline) // get a small font
    }
}
```

## Modifying program state
Swift gives us a special solution called a property wrapper: a special attribute we can place before our properties that effectively gives them super-powers. In the case of storing simple program state like the number of times a button was tapped, we can use a property wrapper from SwiftUI called @State, like this:

```swift
struct ContentView: View {
    @State var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}
```
@State allows us to work around the limitation of structs: we know we can’t change their properties because structs are fixed, but @State allows that value to be stored separately by SwiftUI in a place that can be modified.


## Binding state to user interface controls
```swift
struct ContentView: View {
    @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}
```

## Creating views in a loop
```swift
struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"

    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}
```
ForEach(students, id: \.self). That loops over the students array so we can create a text view for each one, but the id: \.self part is important. This exists because SwiftUI needs to be able to identify every view on the screen uniquely, so it can detect when things change.


## Reading text from the user with TextField
```swift
struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                .keyboardType(.decimalPad)
            }
            Section {
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}
```

## Creating pickers in a form
```swift
struct ContentView: View {
    var body: some View {
        Section {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)

                Picker("Number of people", selection: $numberOfPeople) {
                    ForEach(2..<100) {
                        Text("\($0) people")
                    }
                }
                .pickerStyle(.navigationLink)
            }
        }
    }
}
```

## Adding a segmented control for tip percentages
```swift
Section {
    Text("How much tip do you want to leave?")
    
    Picker("Tip percentage", selection: $tipPercentage) {
        ForEach(tipPercentages, id: \.self) {
            Text($0, format: .percent)
        }
    }
    .pickerStyle(.segmented)
}
```

## Hiding the keyboard
```swift
// part 1 
@FocusState private var amountIsFocused: Bool

// part 2 
.focused($amountIsFocused)

// part 3
.toolbar {
    if amountIsFocused {
        Button("Done") {
            amountIsFocused = false
        }
    }
}
```