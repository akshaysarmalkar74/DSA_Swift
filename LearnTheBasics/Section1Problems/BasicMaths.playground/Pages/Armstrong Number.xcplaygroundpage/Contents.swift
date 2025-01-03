import Foundation

// O(1) Time and Space
func getNumOfDigits(_ num: Int) -> Int {
    guard num != 0 else {
        return 1
    }
    return Int(log10(Double(abs(num)))) + 1
}

// O(d^2) Time where d is number of digts
// O(1) Space
func isArmstrongNumber(_ num: Int) -> Bool {
    let numOfDigits = getNumOfDigits(num)
    var sumOfCube = 0
    var numCopy = num
    
    while numCopy != 0 {
        let digit = numCopy % 10
        var curNumSum = 1
        for _ in 0..<numOfDigits {
            curNumSum *= digit
        }
        sumOfCube += curNumSum
        numCopy /= 10
    }
    print(sumOfCube)
    return sumOfCube == num
}

