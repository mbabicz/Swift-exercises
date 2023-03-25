//Find longest sequence of zeros in binary representation of an integeer

public func solution(_ N: Int) -> Int {
    var decimal = N
    var binary = String(decimal, radix: 2)

    var gapCount = 0
    var maxGap = 0
    var startedCounting = false
    
    for i in binary {
        if i == "1" {
            if startedCounting {
                maxGap = max(maxGap, gapCount)
                gapCount = 0
            } else {
                startedCounting = true
            }
        } else {
            if startedCounting {
                gapCount += 1
            }
        }
    }

    return maxGap
}

solution(200)
// Output: 2
