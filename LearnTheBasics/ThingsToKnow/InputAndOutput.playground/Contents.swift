import Foundation

// Input as String
if let userInput = readLine() {
    print("Hello, \(userInput)!")
} else {
    print("No Input")
}

// Input as Number
if let age = readLine(), let ageInt = Int(age) {
    if ageInt >= 18 {
        print("You are allowed to vote")
    } else {
        print("You are a minor")
    }
} else {
    print("Enter a valid age")
}
