# Introduction to Swift

SwiftUI is a powerful framework for building user-interactive apps for iOS, macOS, tvOS, and even watchOS. But you can’t build software without having a programming language, so behind SwiftUI lies Swift itself: a powerful, flexible, and modern programming language that you’ll use for all your SwiftUI apps.


## Variables 
```swift
var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"
name = "Keeley"
```

### creating a constant variable with let
If you don’t ever want to change a value, you need to use a constant instead. Creating a constant works almost identically to creating a variable, except we use **let**
```swift
let character = "Daphne"
```

## Strings
### How to create strings
```swift
let name = "Ace"
let nameLength = name.count
print(nameLength)
<!-- useful string methods -->
print(name.uppercased())
print(name.hasPrefix("ce"))
print(name.hasSuffix("ce"))

```
## Numbers
### How to store whole numbers
```swift
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

let number = 120
print(number.isMultiple(of: 3))
```

### How to store decimal numbers
- you cant add integer to decimal
```swift
let number = 0.1 + 0.2
print(number)

var rating = 5.0
rating *= 2
```


## Boolean
```swift 
let goodDogs = true
let gameOver = false

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)
```

### How to join strings together

```swift
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

<!-- example: 2 -->
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
```

## How to store ordered data in arrays

```swift
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// read values
print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Allen")
beatles.append("Adrian")

let firstBeatle = beatles[0]
let firstNumber = numbers[0]
let notAllowed = firstBeatle + firstNumber
```
You can see this more clearly when you want to start with an empty array and add items to it one by one. This is done with very precise syntax:

```swift
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores.count)
print(scores[1])
scores.remove(at:1)
scores.removeAll()


let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome"]
print(cities.sorted())
print(cities.reversed())
```

## How to store and find data in dictionaries
Arrays are a great choice when items should be stored in the order you add them, or when you might have duplicate items in there, but very often accessing data by its position in the array can be annoying or even dangerous.

For example, here’s an array containing an employee’s details:
now that you remove index 1 the value will not be predictable because the index shifted.
```swift
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
employee.remove(at: 1)
print("Job title: \(employee[1])")
print("Location: \(employee[2])")
```

## Dictionaries
Swift has a solution for both these problems, called dictionaries. **Dictionaries** don’t store items according to their position like arrays do, but instead let us decide where items should be stored.

```swift
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer"
    "location": "Nashville"
]
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])
```
Adding default value
```swift
let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])
```

You can also create an empty dictionary using whatever explicit types you want to store, then set keys one by one:
```swift
var heights = [String: Int()]
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["Lebron James"] = 206
```