//: [Previous](@previous)

import Foundation

// O(n) Time / O(1) Space
func rotateArrayByOne(nums: inout [Int]) {
    guard nums.count > 1 else { return }
    let firstElement = nums[0]
    
    for idx in stride(from: 0, to: nums.count - 1, by: 1) {
        nums[idx] = nums[idx + 1]
    }
    
    nums[nums.count - 1] = firstElement
}

// Simple Version
func rotateArrayByOneSimpleVersion(nums: inout [Int]) {
    guard nums.count > 1 else { return }
    let firstElement = nums.removeFirst()
    nums.append(firstElement)
}

