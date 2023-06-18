func greet() {
    print("Hello!")
}

func greet(name: String) {
    print("Hello, \(name)!")
}

func greet(name: String, age: Int) {
    print("Hello, \(name)! You are \(age) years old.")
}

greet()                     // Prints "Hello!"
greet(name: "John")         // Prints "Hello, John!"
greet(name: "Alice", age: 25)   // Prints "Hello, Alice! You are 25 years old."
