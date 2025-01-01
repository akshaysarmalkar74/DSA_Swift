import UIKit

var num = 10

// Pass By Value
func changeNum(_ num: Int) {
    num += 1 // This will cause an error
    print(num)
}

// Pass By Value
func changeNum2(_ num: inout Int) {
    num += 1
    print(num)
}
