import UIKit

// Pattern 1
func pattern1(num: Int) {
    for _ in stride(from: 1, through: num, by: 1) {
        for innerIdx in stride(from: 1, through: num, by: 1) {
            print("*", terminator: innerIdx == num ? "\n" : "")
        }
    }
}

// Pattern 2
func pattern2(num: Int) {
    for outerIdx in stride(from: 1, through: num, by: 1) {
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            print("*", terminator: innerIdx == outerIdx ? "\n" : "")
        }
    }
}

// Pattern 3
func pattern3(num: Int) {
    for outerIdx in stride(from: 1, through: num, by: 1) {
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            print(innerIdx, terminator: innerIdx == outerIdx ? "\n" : "")
        }
    }
}

// Pattern 4
func pattern4(num: Int) {
    for outerIdx in stride(from: 1, through: num, by: 1) {
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            print(outerIdx, terminator: innerIdx == outerIdx ? "\n" : "")
        }
    }
}

// Pattern 5
func pattern5(num: Int) {
    for outerIdx in stride(from: num, through: 1, by: -1) {
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            print("*", terminator: innerIdx == outerIdx ? "\n" : "")
        }
    }
}

// Pattern 6
func pattern6(num: Int) {
    for outerIdx in stride(from: num, through: 1, by: -1) {
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            print(innerIdx, terminator: innerIdx == outerIdx ? "\n" : "")
        }
    }
}

// Pattern 7
func pattern7(num: Int) {
    let totalNumOfCols = (num * 2) - 1
    for outerIdx in stride(from: 1, through: num, by: 1) {
        let numOfStars = (outerIdx * 2) - 1
        let numOfLeftAndRightSpaces = num - outerIdx
        
        for _ in stride(from: 1, through: numOfLeftAndRightSpaces, by: 1) {
            print(" ", terminator: "")
        }
        
        for _ in stride(from: 1, through: numOfStars, by: 1) {
            print("*", terminator: "")
        }
        
        for _ in stride(from: 1, through: numOfLeftAndRightSpaces, by: 1) {
            print(" ", terminator: "")
        }
        
        print("\n")
    }
}

// Pattern 8
func pattern8(num: Int) {
    let totalNumOfCols = (num * 2) - 1
    for outerIdx in stride(from: num, through: 1, by: -1) {
        let numOfStars = (outerIdx * 2) - 1
        let numOfLeftAndRightSpaces = num - outerIdx
        
        for _ in stride(from: 1, through: numOfLeftAndRightSpaces, by: 1) {
            print(" ", terminator: "")
        }
        
        for _ in stride(from: 1, through: numOfStars, by: 1) {
            print("*", terminator: "")
        }
        
        for _ in stride(from: 1, through: numOfLeftAndRightSpaces, by: 1) {
            print(" ", terminator: "")
        }
        
        print("\n")
    }
}

// Pattern 9
func pattern9(num: Int) {
    pattern7(num: num)
    pattern8(num: num)
}

// Pattern 10
func pattern10(num: Int) {
    pattern2(num: num)
    pattern5(num: num - 1)
}

// Pattern 11
func pattern11(num: Int) {
    var shouldPrintOne = true
    for outerIdx in stride(from: 1, through: num, by: 1) {
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            let valToPrint = shouldPrintOne ? 1 : 0
            print(valToPrint, terminator: outerIdx == innerIdx ? "\n" : " ")
            shouldPrintOne.toggle()
        }
    }
}

// Pattern 12
func pattern12(num: Int) {
    let totalNumOfCols = num * 2
    for outerIdx in stride(from: 1, through: num, by: 1) {
        let numOfSpaceBetweenCols = totalNumOfCols - (outerIdx * 2)
        
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            print(innerIdx, terminator: "")
        }
        
        for _ in stride(from: 1, through: numOfSpaceBetweenCols, by: 1) {
            print(" ", terminator: "")
        }
        
        for innerIdx in stride(from: outerIdx, through: 1, by: -1) {
            print(innerIdx, terminator: "")
        }
        
        print("\n")
    }
}

// Pattern 13
func pattern13(num: Int) {
    var counter = 1
    for outerIdx in stride(from: 1, through: num, by: 1) {
        for _ in stride(from: 1, through: outerIdx, by: 1) {
            print(counter, terminator: " ")
            counter += 1
        }
        print("\n")
    }
}

// Pattern 14
func pattern14(num: Int) {
    for outerIdx in stride(from: 1, through: num, by: 1) {
        var asciiChar = 65
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            let charToPrint = Character(UnicodeScalar(asciiChar)!)
            print(charToPrint, terminator: innerIdx == outerIdx ? "\n" : "")
            asciiChar += 1
        }
    }
}

// Pattern 15
func pattern15(num: Int) {
    for outerIdx in stride(from: num, through: 1, by: -1) {
        var asciiChar = 65
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            let charToPrint = Character(UnicodeScalar(asciiChar)!)
            print(charToPrint, terminator: innerIdx == outerIdx ? "\n" : "")
            asciiChar += 1
        }
    }
}

// Pattern 16
func pattern16(num: Int) {
    var asciiChar = 65
    for outerIdx in stride(from: 1, through: num, by: 1) {
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            let charToPrint = Character(UnicodeScalar(asciiChar)!)
            print(charToPrint, terminator: innerIdx == outerIdx ? "\n" : "")
        }
        asciiChar += 1
    }
}

// Pattern 17
func pattern17(num: Int) {
    let totalNumOfCols = (num * 2) - 1
    for outerIdx in stride(from: 1, through: num, by: 1) {
        var asciiChar = 65
        let numOfStars = (outerIdx * 2) - 1
        let numOfLeftAndRightSpaces = num - outerIdx
        
        for _ in stride(from: 1, through: numOfLeftAndRightSpaces, by: 1) {
            print(" ", terminator: "")
        }
        
        for innerIdx in stride(from: 1, through: numOfStars, by: 1) {
            let isHalfWayPassed = innerIdx > (numOfStars / 2)
            let valToPrint = Character(UnicodeScalar(asciiChar)!)
            print(valToPrint, terminator: "")
            asciiChar = isHalfWayPassed ? asciiChar - 1 : asciiChar + 1
        }
        
        for _ in stride(from: 1, through: numOfLeftAndRightSpaces, by: 1) {
            print(" ", terminator: "")
        }
        
        print("\n")
    }
}

// Pattern 18
func pattern18(num: Int) {
    for outerIdx in stride(from: 1, through: num, by: 1) {
        var asciiChar = 65 + (num - outerIdx)
        for innerIdx in stride(from: 1, through: outerIdx, by: 1) {
            let charToPrint = Character(UnicodeScalar(asciiChar)!)
            print(charToPrint, terminator: innerIdx == outerIdx ? "\n" : "")
            asciiChar += 1
        }
    }
}

// Pattern 19 and 20 Helpers
func pattern19And20HelperOne(num: Int) {
    let totalNumOfCols = num * 2
    for outerIdx in stride(from: num, through: 1, by: -1) {
        let numOfSpaceBetweenCols = totalNumOfCols - (outerIdx * 2)
        
        for _ in stride(from: 1, through: outerIdx, by: 1) {
            print("*", terminator: "")
        }
        
        for _ in stride(from: 1, through: numOfSpaceBetweenCols, by: 1) {
            print(" ", terminator: "")
        }
        
        for _ in stride(from: outerIdx, through: 1, by: -1) {
            print("*", terminator: "")
        }
        
        print("\n")
    }
}

func pattern19And20HelperTwo(num: Int) {
    let totalNumOfCols = num * 2
    for outerIdx in stride(from: 1, through: num, by: 1) {
        let numOfSpaceBetweenCols = totalNumOfCols - (outerIdx * 2)
        
        for _ in stride(from: 1, through: outerIdx, by: 1) {
            print("*", terminator: "")
        }
        
        for _ in stride(from: 1, through: numOfSpaceBetweenCols, by: 1) {
            print(" ", terminator: "")
        }
        
        for _ in stride(from: outerIdx, through: 1, by: -1) {
            print("*", terminator: "")
        }
        
        print("\n")
    }
}

// Pattern 19
func pattern19(num: Int) {
    pattern19And20HelperOne(num: num)
    pattern19And20HelperTwo(num: num)
}

// Pattern 20

func pattern20(num: Int) {
    pattern19And20HelperTwo(num: num)
    pattern19And20HelperOne(num: num)
}

// Pattern 21
func pattern21(num: Int) {
    for outerIdx in stride(from: 1, through: num, by: 1) {
        for innerIdx in stride(from: 1, through: num, by: 1) {
            if outerIdx == 1 || outerIdx == num || innerIdx == 1 || innerIdx == num {
               print("*", terminator: "")
            } else {
                print(" ", terminator: "")
            }
        }
        print("\n")
    }
}

// Pattern 22
func pattern22(num: Int) {
    let numOfRowsAndCols = (num * 2) - 1
    
    for outerIdx in stride(from: 1, through: numOfRowsAndCols, by: 1) {
        for innerIdx in stride(from: 1, through: numOfRowsAndCols, by: 1) {
            let verticalDistance = abs(num - outerIdx)
            let horizontalDistance = abs(num - innerIdx)
            let maxDistance = max(verticalDistance, horizontalDistance) + 1
            print(maxDistance, terminator: "")
        }
        
        print("\n")
    }
}

pattern22(num: 4)
