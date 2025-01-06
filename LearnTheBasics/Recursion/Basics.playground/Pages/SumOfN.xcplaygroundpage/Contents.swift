//: [Previous](@previous)

import Foundation

func sumToN(num: Int) -> Int {
    if num < 1 { return 0 }
    return num + sumToN(num: num - 1)
}

func factorial(num: Int) -> Int {
    if num < 1 { return 1 }
    return num * factorial(num: num - 1)
}

