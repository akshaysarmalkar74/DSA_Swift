import Foundation

func selectionSort(arr: inout [Int]) -> [Int] {
    let maxIdxToIterate = arr.count - 1
    
    for idx in stride(from: 0, to: maxIdxToIterate, by: 1) {
        var minIdx = idx
        for iterIdx in stride(from: idx + 1, through: maxIdxToIterate, by: 1) {
            let iterVal = arr[iterIdx]
            let minVal = arr[minIdx]
            if iterVal < minVal {
                // Store idx where minimum number resides
                minIdx = iterIdx
            }
        }
        
        if minIdx != idx {
            // Make Swap
            arr.swapAt(idx, minIdx)
        }
    }
    
    return arr
}

