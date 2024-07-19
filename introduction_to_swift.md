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

## How to use sets for fast data lookup
a set – they are similar to arrays, except you can’t add duplicate items, and they don’t store their items in a particular order.

```swift
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

// Adding Item to set
var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")
```

## How to create and use enums
An enum – short for enumeration – is a set of named values we can create and use in our code. They don’t have any special meaning to Swift, but they are more efficient and safer, so you’ll use them a lot in your code.

```swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
```

Swift does two things that make enums a little easier to use. First, when you have many cases in an enum you can just write case once, then separate each case with a comma:
```swift
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
var day = Weekday.monday
day = .tuesday
day = .friday
```

## How to use type annotations
Swift is able to figure out what type of data a constant or variable holds based on what we assign to it. However, sometimes we don’t want to assign a value immediately, or sometimes we want to override Swift’s choice of type, and that’s where type annotations come in.

```swift
let surname: String = "Lasso"
var score: Int = 0
var albums: [String] = ["Red", "Fearless"] // array
var user: [String: String] = ["id": "@test"] // dictionary
var books: Set<String> = Set(["Test"]) // set

// type inference
var clues = [String]()
```

## How to check a condition is true or false
```swift
// example 1
if someCondition {
    print("do something")
}
// example 2
let score = 85
if score > 80 {
    print("great job")
}
// example 3
let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

// example 4
var numbers = [1,2,3]
numbers.append(4)
if numbers.count > 3 {
    numbers.remove(at: 0)
}

// example 5
var username = "acemiranda"
if username.isEmpty == true {
    username = "Anonymous"
}
```

## How to check multiple conditions
```swift
// example 1
let a = false
let b = true
if a {
    print("code to run if A is true")
} else if b {
    print("code to run if A is false but B is true")
} else {
    print("both A or B are false")
}
// example 2
let temp = 25
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// example 3
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}
let transport = TransportOption.airplane
if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
```

## How to use switch statements to check multiple conditions
```swift
enum Weather {
    case sun, rain, wind, snow, unknown
}
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
    fallthrough // if you explicitly want Swift to carry on executing subsequent cases,
default:
    print("test")
}
```
Second, if you explicitly want Swift to carry on executing subsequent cases, use **fallthrough**. This is not commonly used, but sometimes – just sometimes – it can help you avoid repeating work.

## How to use the ternary conditional operator for quick tests
```swift
let age = 18
let canVote = age >= 18 ? "Yes" : "No"
```


## How to use a for loop to repeat work
