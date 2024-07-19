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

## Summary

- Swift lets us create constants using let, and variables using var.
- If you don’t intend to change a value, make sure you use let so that Swift can help you avoid mistakes.
Swift’s strings contain text, from short strings up to whole novels. They work great with emoji and any world language, and have helpful functionality such as count and uppercased().
- You create strings by using double quotes at the start and end, but if you want your string to go over several lines you need to use three double quotes at the start and end.
- Swift calls its whole numbers integers, and they can be positive or negative. They also have helpful functionality, such as isMultiple(of:).
- In Swift decimal numbers are called Double, short for double-length floating-point number. That means they can hold very large numbers if needed, but they also aren’t 100% accurate – you shouldn’t use them when 100% precision is required, such as when dealing with money.
- There are lots of built-in arithmetic operators, such as +, -, *, and /, along with the special compound assignment operators such as += that modify variables directly.
- You can represent a simple true or false state using a Boolean, which can be flipped using the ! operator or by calling toggle().
- String interpolation lets us place constants and variables into our strings in a streamlined, efficient way.