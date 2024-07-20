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
Computers are really great at doing repetitive work, and Swift makes it easy to repeat some code a fixed number of times, or once for every item in an array, dictionary, or set.

```swift
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print(os)
}
```
Rather than looping over an array (or set, or dictionary – the syntax is the same!), you can also loop over a fixed range of numbers. For example, we could print out the 5 times table from 1 through 12 like this:

```swift
for i in 1...12 {
    print(5*i)
}

// nested loops
for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}
```


## How to use a while loop to repeat work
```swift
var countdown = 10
while countdown > 0 {
    print(countdown)
    countdown -= 1
}

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)
```

## How to skip loop items with break and continue
```swift
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]
for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

// using break
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)
```
## How to reuse code with functions
```swift
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome() // run function

func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(number:5)
```

## How to return values from functions
If you want to return your own value from a function, you need to do two things:

1. Write an arrow then a data type before your function’s opening brace, which tells Swift what kind of data will get sent back.
2. Use the return keyword to send back your data.

```swift
func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

// example 3
func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)
```

## How to return multiple values from functions
```swift
func getUser() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}
// Here’s how our function looks when it returns a tuple:
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

// example 3
func getUser() -> (String, String) {
    ("Taylor", "Swift")
}
let user = getUser()
print("Name: \(user.0) \(user.1)")

// or desctructure
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

// 
let (firstName, _) = getUser()
print("Name: \(firstName)")
```


## How to customize parameter labels
```swift
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 5)


// for example 
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5)
```

## How to provide default values for parameters
Adding parameters to functions lets us add customization points, so that functions can operate on different data depending on our needs. Sometimes we want to make these customization points available to keep our code flexible, but other times you don’t want to think about it – you want the same thing nine times out of ten.

```swift
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)
```


## How to handle errors in functions
Things go wrong all the time, such as when that file you wanted to read doesn’t exist, or when that data you tried to download failed because the network was down. If we didn’t handle errors gracefully then our code would crash, so Swift makes us handle errors – or at least acknowledge when they might happen.

This takes three steps:

1. Telling Swift about the possible errors that can happen.
2. Writing a function that can flag up errors if they happen.
3. Calling that function, and handling any errors that might happen.
```swift
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PassWordError.short
    }
      if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
```

working with real Swift projects you’ll find there are three steps:
```swift
let string = "12345"
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
```

## How to create and use closures
Functions are powerful things in Swift. Yes, you’ve seen how you can call them, pass in values, and return data, but you can also assign them to variables, pass functions into functions, and even return functions from functions.

That creates a trivial function and calls it, but then creates a copy of that function and calls the copy. As a result, it will print the same message twice.

Swift gives this the grandiose name closure expression, which is a fancy way of saying we just created a closure – a chunk of code we can pass around and call whenever we want. This one doesn’t have a name, but otherwise it’s effectively a function that takes no parameters and doesn’t return a value.

Okay, let’s write some new code that calls sorted() using a closure:
```swift
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})
```

## How to use trailing closures and shorthand syntax
Swift has a few tricks up its sleeve to reduce the amount of syntax that comes with closures.
```swift
let captainFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
// Using this syntax our code becomes even shorter:
let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}
let reverseTeam = team.sorted { $0 > $1 }
let uppercaseTeam = team.map { $0.uppercased() }
let tOnly = team.filter { $0.hasPrefix("T") }

```

## How to accept functions as parameters
There’s one last closure-related topic I want to look at, which is how to write functions that accept other functions as parameters. This is particularly important for closures because of trailing closure syntax, but it’s a useful skill to have regardless

```swift
// Here’s a function that generates an array of integers by repeating a function a certain number of times:
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)
```
## Summary: Closures
- You can copy functions in Swift, and they work the same as the original except they lose their external parameter names.
- All functions have types, just like other data types. This includes the parameters they receive along with their return type, which might be Void – also known as “nothing”.
- You can create closures directly by assigning to a constant or variable.
- Closures that accept parameters or return a value must declare this inside their braces, followed by the keyword in.
- Functions are able to accept other functions as parameters. They must declare up front exactly what data those functions must use, and Swift will ensure the rules are followed.
- In this situation, instead of passing a dedicated function you can also pass a closure – you can make one directly. Swift allows both approaches to work.
- When passing a closure as a function parameter, you don’t need to explicitly write out the types inside your closure if Swift can figure it out automatically. The same is true for the return value – if Swift can figure it out, you don’t need to specify it.
- If one or more of a function’s final parameters are functions, you can use trailing closure syntax.
You can also use shorthand parameter names such as $0 and $1, but I would recommend doing that only under some conditions.
- You can make your own functions that accept functions as parameters, although in practice it’s much more important to know how to use them than how to create them.



## How to create your own structs
Swift’s structs let us create our own custom, complex data types, complete with their own variables and their own functions.

```swift
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()
```

Where things get more interesting is when you want to have values that can change. For example, we could create an Employee struct that can take vacation as needed:

```swift
struct Employee {
    let name: String
    var vacationRemaining: Int

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

// Swift silently creates a special function inside the struct called init(), using all the properties of the struct as its parameters. It then automatically treats these two pieces of code as being the same:

var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)
```

## How to compute property values dynamically
Structs can have two kinds of property: a stored property is a variable or constant that holds a piece of data inside an instance of the struct, and a computed property calculates the value of the property dynamically every time it’s accessed. This means computed properties are a blend of both stored properties and functions: they are accessed like stored properties, but work like functions.
```swift
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)
```


## How to take action when a property changes (Property Observers)
Swift lets us create property observers, which are special pieces of code that run when properties change. These take two forms: a didSet observer to run when the property just changed, and a willSet observer to run before the property changed.


```swift
struct Game {
    var score = 0 {
        didSet {
            print("Score is no \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 3
game.score += 1

// example 2 

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value is: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen w")
app.contacts.append("Ish S")
```
Yes, appending to an array will trigger both willSet and didSet, so that code will print lots of text when run.

## How to create custom initializers
Initializers are specialized methods that are designed to prepare a new struct instance to be used. You’ve already seen how Swift silently generates one for us based on the properties we place inside a struct, but you can also create your own as long as you follow one golden rule: all properties must have a value by the time the initializer ends.

this kind of code is possible because Swift silently generates an initializer accepting those two values, but we could write our own to do the same thing. The only catch here is that you must be careful to distinguish between the names of parameters coming in and the names of properties being assigned.

```swift
struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}
let player = Player(name: "Megan R", number: 15)
```
our custom initializers don’t need to work like the default memberwise initializer Swift provides us with. For example, we could say that you must provide a player name, but the shirt number is randomized:
```swift
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
let player = Player(name: "Megan R")
print(player.number)
```

## How to limit access to internal data using access control
By default, Swift's structs let us access their properties and methods freely, but often that isn't what you want - sometimes you want to hide some data from external access. For example, maybe have some logc you neeed to apply before touching your properties, or maybe you know that some methods need to be called in a certain way or order, and so shouldn't be touched externally
```swift
struct BankAccount {
    private var funds = 0
    mutating func deposit(amount: Int) {
        funds += amount
    }
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount 
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)
if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
```

## Static properties and methods
You’ve seen how we can attach properties and methods to structs, and how each struct has its own unique copy of those properties so that calling a method on the struct won’t read the properties of a different struct from the same type.

Well, sometimes – only sometimes – you want to add a property or method to the struct itself, rather than to one particular instance of the struct, which allows you to use them directly. I use this technique a lot with SwiftUI for two things: creating example data, and storing fixed data that needs to be accessed in various places.

```swift
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the schoold.")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
```

The second reason I commonly use static data is to create examples of my structs. As you’ll see later on, SwiftUI works best when it can show previews of your app as you develop, and those previews often require sample data. For example, if you’re showing a screen that displays data on one employee, you’ll want to be able to show an example employee in the preview screen so you can check it all looks correct as you work.

```swift
struct Employee {
    let username: String
    let password: String
    static let example = Employee(username: "User", password: "Password")
}
```

## Summary: Structs
- You can create your own structs by writing struct, giving it a name, then placing the struct’s code inside braces.
- Structs can have variable and constants (known as properties) and functions (known as methods)
- If a method tries to modify properties of its struct, you must mark it as mutating.
- You can store properties in memory, or create computed properties that calculate a value every time they are accessed.
- We can attach didSet and willSet property observers to properties inside a struct, which is helpful when we need to be sure that some code is always executed when the property changes.
- Initializers are a bit like specialized functions, and Swift generates one for all structs using their property names.
- You can create your own custom initializers if you want, but you must always make sure all properties in your struct have a value by the time the initializer finishes, and before you call any other methods.
- We can use access to mark any properties and methods as being available or unavailable externally, as needed.
It’s possible to attach a property or methods directly to a struct, so you can use them without creating an instance of the struct.

## How to create your own classes
First, the things that classes and structs have in common include:

- You get to create and name them.
- You can add properties and methods, including property observers and access control.
- You can create custom initializers to configure new instances however you want.

However, classes differ from structs in five key places:

1. You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point. If you want to selectively override some methods, you can do that too.
2. Because of that first point, Swift won’t automatically generate a memberwise initializer for classes. This means you either need to write your own initializer, or assign default values to all your properties.
3. When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
4. When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
5. Even if you make a class constant, you can still change its properties as long as they are variables

SwiftUI uses classes extensively, mainly for point 3: all copies of a class share the same data. This means many parts of your app can share the same information, so that if the user changed their name in one screen all the other screens would automatically update to reflect that change.


```swift
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var newGame = Game()
newGame.score += 10
```

## How to make one class inherit from another
Swift lets us create classes by basing them on existing classes, which is a process known as inheritance. When one class inherits functionality from another class (its “parent” or “super” class), Swift will give the new class access (the “child class” or “subclass”) to the properties and methods from that parent class, allowing us to make small additions or changes to customize the way the new class behaves.

```swift
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    func printSummary(){
        print("I work \(hours) hours a day.")
    }
}
class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}
let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
let novall = Developer(hours: 8)
novall.printSummary()
```
inheritance will help avoid repeating code


## How to add initializers for classes
Class initializers in Swift are more complicated than struct initializers, but with a little cherrypicking we can focus on the part that really matters: if a child class has any custom initializers, it must always call the parent’s initializer after it has finished setting up its own properties, if it has any.

Like I said previously, Swift won’t automatically generate a memberwise initializer for classes. This applies with or without inheritance happening – it will never generate a memberwise initializer for you. So, you either need to write your own initializer, or provide default values for all the properties of the class.

Let’s start by defining a new class:

```swift
class Vehicle {
    let isElectric: Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}
class Car: Vehicle {
    let isConvertible: Bool
    init(isConvertible: Bool) {
        self.isConvertible = isConvertible
        // we need to ask the super class to run its own initializer.
        super.init(isElectric: isElectric)
    }
}
let teslaX = Car(isElectric: true, isConvertible: false)
```

## How to copy classes
In Swift, all copies of a class instance share the same data, meaning that any changes you make to one copy will automatically change the other copies. This happens because classes are reference types in Swift, which means all copies of a class all refer back to the same underlying pot of data.

```swift
class User {
    var username = "Anonymous"
}
var user1 = User() // create instance of class
var user2 = user1 // copy user1
user2.username = "Taylor"
print(user1.username)
print(user2.username)
```

In comparison, structs do not share their data amongst copies, meaning that if we change class User to struct User in our code we get a different result: it will print “Anonymous” then “Taylor”, because changing the copy didn’t also adjust the original.

If you want to create a unique copy of a class instance – sometimes called a deep copy – you need to handle creating a new instance and copy across all your data safely.
```swift
class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}
```


## How to create a deinitializer for a class
Swift’s classes can optionally be given a deinitializer, which is a bit like the opposite of an initializer in that it gets called when the object is destroyed rather than when it’s created.

```swift
class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}
```

## How to work with variables inside classes
Swift’s classes work a bit like signposts: every copy of a class instance we have is actually a signpost pointing to the same underlying piece of data. Mostly this matters because of the way changing one copy changes all the others, but it also matters because of how classes treat variable properties.
```swift
class User {
    var name = "Paul"
}

let user = User()
user.name = "Taylor"
print(user.name)
```
## Summary: Classes
- Classes have lots of things in common with structs, including the ability to have properties and methods, but there are five key differences between classes and structs.
- First, classes can inherit from other classes, which means they get access to the properties and methods of their parent class. You can optionally override methods in child classes if you want, or mark a class as being final to stop others subclassing it.
- Second, Swift doesn’t generate a memberwise initializer for classes, so you need to do it yourself. If a subclass has its own initializer, it must always call the parent class’s initializer at some point.
- Third, if you create a class instance then take copies of it, all those copies point back to the same instance. This means changing some data in one of the copies changes them all.
- Fourth, classes can have deinitializers that run when the last copy of one instance is destroyed.
- Finally, variable properties inside class instances can be changed regardless of whether the instance itself was created as variable.


## How to create and use protocols
Protocols are a bit like contracts in Swift: they let us define what kinds of functionality we expect a data type to support, and Swift ensures that the rest of our code follows those rules.

This is where protocols come in: they let us define a series of properties and methods that we want to use. They don’t implement those properties and methods – they don’t actually put any code behind it – they just say that the properties and methods must exist, a bit like a blueprint.

```swift
func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}
```

## How to use opaque return types
Swift provides one really obscure, really complex, but really important feature called opaque return types, which let us remove complexity in our code. Honestly I wouldn’t cover it in a beginners course if it weren’t for one very important fact: you will see it immediately as soon as you create your very first SwiftUI project.

```swift
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}
func getRandomBool() -> some Equatable {
    Bool.random()
}
print(getRandomNumber() == getRandomNumber())
```

## How to create and use extensions
Extensions let us add functionality to any type, whether we created it or someone else created it – even one of Apple’s own types.

```swift
var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
let trimmed2 = trim(quote)

mutating func trim() {
    self = self.trimmed()
}
quote.trim()
```

However, sometimes you want both – you want the ability to use a custom initializer, but also retain Swift’s automatic memberwise initializer. In this situation it’s worth knowing exactly what Swift is doing: if we implement a custom initializer inside our struct, then Swift disables the automatic memberwise initializer.

```swift
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}
```

## How to create and use protocol extensions
Protocols let us define contracts that conforming types must adhere to, and extensions let us add functionality to existing types. But what would happen if we could write extensions on protocols?

Well, wonder no more because Swift supports exactly this using the aptly named protocol extensions: we can extend a whole protocol to add method implementations, meaning that any types conforming to that protocol get those methods.


```swift
let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}
extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

protocol Person {
    var name: String { get }
    func sayHello()
}
// That means all conforming types must add a sayHello() method, but we can also add a default implementation of that as an extension like this:

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}
struct Employee: Person {
    let name: String
}
let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()
```

## How to get the most from protocol extensions
```swift
extension Int {
    func squared() -> Int {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())

extension Numeric {
    func squared() -> Int {
        self * self
    }
}
// However, that code won’t work any more, because self * self can now be any kind of numbers, including Double, and if you multiply a Double by a Double you definitely don’t get an Int back.
extension Numeric {
    func squared() -> Self {
        self * self
    }
}
```

## Summary: Protocols and extensions
- Protocols are like contracts for code: we specify the functions and methods that we required, and conforming types must implement them.
- Opaque return types let us hide some information in our code. That might mean we want to retain flexibility to change in the future, but also means we don’t need to write out gigantic return types.
- Extensions let us add functionality to our own custom types, or to Swift’s built-in types. This might mean adding a method, but we can also add computed properties.
- Protocol extensions let us add functionality to many types all at once – we can add properties and methods to a protocol, and all conforming types get access to them.

## How to handle missing data with optionals
Swift likes to be predictable, which means as much as possible it encourages us to write code that is safe and will work the way we expect. You’ve already met throwing functions, but Swift has another important way of ensuring predictability called optionals – a word meaning “this thing might have a value or might not.”

To see optionals in action, think about the following code:
```swift
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]
```

Swift gives us two primary ways of unwrapping optionals, but the one you’ll see the most looks like this:
```swift
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}
var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}
```
You can see this in action if you try to pass an optional integer into a function that requires a non-optional integer, like this:

```swift
func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
print(square(number: number))

// to use the optional we must first unwrap it like this:
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

// using this approach, we could rewrite the previous code to this:
if let number = number {
    print(square(number: number))
}
```


## How to unwrap optionals with guard
You’ve already seen how Swift uses if let to unwrap optionals, and it’s the most common way of using optionals. But there is a second way that does much the same thing, and it’s almost as common: guard let.

```swift
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        print
    }
    print("\(number) x \(number) is \(number * number)")
}
```

Like if let, guard let checks whether there is a value inside an optional, and if there is it will retrieve the value and place it into a constant of our choosing.

However, the way it does so flips things around:

```swift
var myVar: Int? = 3
if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}
guard let unwrapped = myVar else {
    print("Run if myVar doesn't have a value inside")
}
```

guard is designed exactly for this style of programming, and in fact does two things to help:

1. If you use guard to check a function’s inputs are valid, Swift will always require you to use return if the check fails.
2. If the check passes and the optional you’re unwrapping has a value inside, you can use it after the guard code finishes.
You can see both of these points in action if you look at the printSquare() function from earlier:

```swift
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}
```


## How to unwrap optionals with nil coalescing
Wait… Swift has a third way of unwrapping optionals? Yep! And it’s really useful, too: it’s called the nil coalescing operator and it lets us unwrap an optional and provide a default value if the optional was empty.

```swift
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

// example 2
struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

// example 3
let input = ""
let number = Int(input) ?? 0
print(number)
```

## How to handle multiple optionals using optional chaining
Optional chaining is a simplified syntax for reading optionals inside optionals. The might sound like something you'd want to use rarely, but if i show you an example you'll see why it's helpful.

```swift
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

//
struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)
```

## How to handle function failure with optionals
When we call a function that might throw errors, we either call it using try and handle errors appropriately, or if we’re certain the function will not fail we use try! and accept that if we were wrong our code will crash. (Spoiler: you should use try! very rarely.)

```swift
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}
if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

// Be careful, though: you need to add some parentheses before nil coalescing so that Swift understands exactly what you mean. For example, you’d write this:
let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
```

## Summary: Optionals
- Optionals let us represent the absence of data, which means we’re able to say “this integer has no value” – that’s different from a fixed number such as 0.
- As a result, everything that isn’t optional definitely has a value inside, even if that’s just an empty string.
- Unwrapping an optional is the process of looking inside a box to see what it contains: if there’s a value inside it’s sent back for use, otherwise there will be nil inside.
- We can use if let to run some code if the optional has a value, or guard let to run some code if the optional doesn’t have a value – but with guard we must always exit the function afterwards.
- The nil coalescing operator, ??, unwraps and returns an optional’s value, or uses a default value instead.
- Optional chaining lets us read an optional inside another optional with a convenient syntax.
- If a function might throw errors, you can convert it into an optional using try? – you’ll either get back the function’s return value, or nil if an error is thrown