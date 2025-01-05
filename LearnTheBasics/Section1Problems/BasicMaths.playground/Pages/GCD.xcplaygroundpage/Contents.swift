import Foundation

// O(min(n1, n2)) Time / O(1) Space
func gcd1(of num1: Int, and num2: Int) -> Int {
    let minNum = min(num1, num2)
    let maxNum = max(num1, num2)
    let maxNumToIterate = Int(Double(minNum).squareRoot())
    var result = 1
    
    for i in stride(from: 1, through: maxNumToIterate, by: 1) {
        if minNum % i == 0 && maxNum % i == 0 {
            let otherDivisor = minNum / i
            if maxNum % otherDivisor == 0 {
                let maxNum = max(i, otherDivisor)
                if maxNum > result {
                    result = maxNum
                }
            } else if i > result {
                result = i
            }
        }
    }
    
    return result
}

// O(min(n1, n2)) Time / O(1) Space
func gcd2(of num1: Int, and num2: Int) -> Int {
    var minNum = min(num1, num2)
    var maxNum = max(num1, num2)
    
    while minNum != 0 {
        let remainingNum = maxNum - minNum
        maxNum = max(minNum, remainingNum)
        minNum = min(minNum, remainingNum)
    }
    return maxNum
}

print(gcd2(of: 9, and: 12))
