//Find longest sequence of zeros in binary representation of an integeer

public func solution(_ N : Int) -> Int {
    // Implement your solution here
    var decimal = N
    var binary = ""
    
    var gapCount = 0
    var maxGap = 0
    var startedCounting = false
    
    binary = String(decimal, radix: 2)
    print("binary: \(binary)")
    
    for i in binary {
        if i == "1"{
            if !startedCounting {
                startedCounting = true
            } else {
                if gapCount >= maxGap{
                    maxGap = gapCount
                }
            }
            gapCount = 0
        } else {
            if startedCounting{
                gapCount += 1
            }
        }
    }
    print("maxGap: \(maxGap)")
    return maxGap
}

solution(200)
// Output:
// binary: 11001000
// maxGap: 2

