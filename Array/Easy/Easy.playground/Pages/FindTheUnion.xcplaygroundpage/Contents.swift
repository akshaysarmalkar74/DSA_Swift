//: [Previous](@previous)

import Foundation

func findTheUnion(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var result = [Int]()
    
    var leftIdx = 0
    var rightIdx = 0
    
    while leftIdx < arr1.count && rightIdx < arr2.count {
        let leftVal = arr1[leftIdx]
        let rightVal = arr2[rightIdx]
        
        if leftVal < rightVal {
            if result.isEmpty || result.last! != leftVal {
                result.append(leftVal)
            }
            leftIdx += 1
        } else {
            if result.isEmpty || result.last! != rightVal {
                result.append(rightVal)
            }
            rightIdx += 1
        }
    }
    
    while leftIdx < arr1.count {
        if result.isEmpty || result.last! != arr1[leftIdx] {
            result.append(arr1[leftIdx])
        }
        leftIdx += 1
    }
    
    while rightIdx < arr2.count {
        if result.isEmpty || result.last! != arr2[rightIdx] {
            result.append(arr2[rightIdx])
        }
        rightIdx += 1
    }
    
    return result
}
