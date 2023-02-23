/*
 Write a function that returns the nth element of the Fibonacci Sequence (1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89)
f(n) = f(n-1) - f(n-2)
 */

func fibonacci(_ n: Int) -> Int {
    guard n > 2 else { return 1}
    return fibonacci(n-1) + fibonacci(n-2)
}

func fibonacciSeries(_ n: Int) -> [Int]{
    guard n > 0 else { return [] }
    var array = [1]
    
    if n > 1 {
        array.append(1)
        for index in 2..<n {
            let output = array[index-1] + array[index-2]
            array.append(output)
        }
    }
    
    return array
}

fibonacci(10) // 55
fibonacciSeries(10) // [1, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
