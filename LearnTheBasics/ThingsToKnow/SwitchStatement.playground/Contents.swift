import UIKit

enum Shape: String {
    case circle = "Circle"
    case rectangle = "Rectangle"
}

var userChoice: Shape = .rectangle

var radius: Double = 5
var length: Double = 5
var width: Double = 10

let area: Double

switch userChoice {
    case .circle:
        area = .pi * pow(radius, 2)
    case .rectangle:
        area = length * width
}

print("Area for \(userChoice.rawValue) is \(area).")
