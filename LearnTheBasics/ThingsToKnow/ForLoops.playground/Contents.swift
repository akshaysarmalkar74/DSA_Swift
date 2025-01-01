import UIKit

func getFibonacci(_ n: Int) -> Int {
    var series = [0, 1, 1]
    for i in 3...n {
        series.append(series[i-1] + series[i-2])
    }
    return series[n]
}

print(getFibonacci(3))
