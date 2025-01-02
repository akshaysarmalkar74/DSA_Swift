import UIKit

// Time O(n) - n is num of digits
// Space O(1)

func evenlyDivides(_ n: Int) -> Int {
    var nCopy = n
    var result = 0
    
    while nCopy != 0 {
        let remainder = nCopy % 10
        result += remainder
        nCopy /= 10
        if n % remainder == 0 {
            result += 1
        }
    }
    
    return result
}
