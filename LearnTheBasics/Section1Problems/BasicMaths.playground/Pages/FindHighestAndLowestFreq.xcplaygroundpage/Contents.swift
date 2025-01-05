import Foundation

func findHighestAndLowestFrequency(for nums: [Int]) -> (highest: Int?, lowest: Int?) {
    guard !nums.isEmpty else { return (nil, nil) }
    let frequencies = nums.reduce(into: [Int: Int]()) { $0[$1, default: 0] += 1 }
    var highest: Int?
    var lowest: Int?
    
    for (key, value) in frequencies {
        if let highest {
            if value > frequencies[highest, default: 0] { // Default won't run
                highest = key
            }
        } else {
            highest = key
        }
        
        if let lowest {
            if value < frequencies[lowest, default: 0] { // Default won't run
                lowest = key
            }
        } else {
            lowest = key
        }
    }
    
    return (highest, lowest)
}
