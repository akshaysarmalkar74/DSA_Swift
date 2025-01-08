//: [Previous](@previous)

import Foundation

// O(n) Time / O(1) Space
func isArraySorted(_ numbers: [Int]) -> Bool {
    for idx in stride(from: 0, to: numbers.count - 1, by: 1) {
        let curNum = numbers[idx]
        let numToCompare = numbers[idx + 1]
        
        if curNum > numToCompare {
            return false
        }
    }
    return true
}
