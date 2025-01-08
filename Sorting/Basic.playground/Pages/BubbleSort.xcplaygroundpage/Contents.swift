import Foundation

func bubbleSort(arr: inout [Int]) -> [Int] {
    var idx = 0
    while idx < (arr.count - 1) {
        let maxIdxToIterate = arr.count - 1 - idx
        var isSwapMade = false
        for iterIdx in stride(from: 0, to: maxIdxToIterate, by: 1) {
            let currentVal = arr[iterIdx]
            let valToCompare = arr[iterIdx + 1]
            
            if currentVal > valToCompare {
                // Make a swap
                arr.swapAt(iterIdx, iterIdx + 1)
                isSwapMade = true
            }
        }
        
        if !isSwapMade {
            return arr
        }
        
        idx += 1
    }
    
    return arr
}
