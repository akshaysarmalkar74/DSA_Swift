import Foundation

// O(sqrt of n) Time / O(1) Space
func isPrimeNumber(num: Int) -> Bool {
    guard num > 1 else {
        return false
    }
    
    let maxNumToIterate = Int(Double(num).squareRoot())
    
    for i in 2...maxNumToIterate {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
