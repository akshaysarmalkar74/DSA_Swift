import Foundation

// O(n * ˇn) Time / O(1) Space
func sumOfAllDivisors(_ n: Int) -> Int {
    var result = 0
    for num in 1...n {
        result += sumOfDivisors(num)
    }
    return result
}

// O(ˇn) Time / O(1) Space
func sumOfDivisors(_ n: Int) -> Int {
    guard n > 0 else { return 0 }
    guard n != 1 else { return 1 }
    
    var sum = 0
    var maxNumToCheck = Int(Double(n).squareRoot())
    
    for i in 1...maxNumToCheck {
        if n % i == 0 {
            sum += i
            if i != n / i {
                sum += n / i
            }
        }
    }
    
    return sum
}

