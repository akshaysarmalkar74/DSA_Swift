//: [Previous](@previous)

import Foundation

func isPalindrome(_ string: String) -> Bool {
    guard string.count > 1 else { return true }
    
    func isPalindromeHelper(left: Int, right: Int) -> Bool {
        if left >= right { return true }
        let leftIdx = string.index(string.startIndex, offsetBy: left)
        let rightIdx = string.index(string.startIndex, offsetBy: right)
        if string[leftIdx] != string[rightIdx] { return false }
        return isPalindromeHelper(left: left + 1, right: right - 1)
    }
    
    return isPalindromeHelper(left: 0, right: string.count - 1)
}

print(isPalindrome("ABCBA"))
