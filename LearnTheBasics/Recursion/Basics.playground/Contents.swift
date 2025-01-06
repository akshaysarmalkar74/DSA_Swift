import UIKit

func printGFG(num: Int) {
    var counter = 0
    printGFGHelper(num: num, counter: &counter)
}

func printGFGHelper(num: Int, counter: inout Int) {
    if counter == num {
        return
    }
    print("GFG")
    counter += 1
    printGFGHelper(num: num, counter: &counter)
}


printGFG(num: 6)
