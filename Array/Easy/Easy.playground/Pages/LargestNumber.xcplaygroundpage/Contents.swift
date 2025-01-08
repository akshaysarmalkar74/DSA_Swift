import UIKit

// O(n) Time / O(1) Space
func largestNumber(_ numbers: [Int]) -> Int {
    var maxNumber = Int.min
    for number in numbers {
        if number > maxNumber {
            maxNumber = number
        }
    }
    return maxNumber
}


func largestNumberUsingHOF(_ numbers: [Int]) -> Int {
    return numbers.reduce(Int.min) { max($0, $1) }
}

// O(n) Time / O(n) Space
func largestNumberUsingRecursion(_ numbers: [Int]) -> Int {
    guard !numbers.isEmpty else { return Int.min }
    var maxNumber = numbers[0]
    var counter = 0
    
    func largestNumberUsingRecursionHelper(_ numbers: [Int], curMaxNumber: inout Int, counter: Int) -> Int {
        if counter == numbers.count {
            return curMaxNumber
        }
        curMaxNumber = max(curMaxNumber, numbers[counter])
        return largestNumberUsingRecursionHelper(numbers, curMaxNumber: &curMaxNumber, counter: counter + 1)
    }
    
    return largestNumberUsingRecursionHelper(numbers, curMaxNumber: &maxNumber, counter: counter)
}
