import Foundation

// Both have O(n) Time and Space complexity
// Prints 1 to N
func printOneToN(num: Int) {
    var counter = 1
    printOneToNHelper(num, counter: counter)
    
}

func printOneToNHelper(_ n: Int, counter: Int) {
    guard counter <= n else { return }
    print(counter)
    printOneToNHelper(n, counter: counter + 1)
}

// Prints N to 1
func printNToOne(num: Int) {
    var counter = num
    printNToOneHelper(num, counter: counter)
}

func printNToOneHelper(_ n: Int, counter: Int) {
    guard counter >= 1 else { return }
    print(counter)
    printNToOneHelper(n, counter: counter - 1)
}

printNToOne(num: 7)
