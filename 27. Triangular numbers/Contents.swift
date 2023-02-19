//Get nth triangular number
func triangularNumber(_ n: Int) -> Int {
    return (n*(n+1))/2
}


//Get triangular numbers up to n
func getTriangularNumbers(_ n: Int) -> [Int] {
    var sum = 0
    var result = [Int]()
    for i in 1...n {
        sum += i
        result.append(sum)
    }
    return result
}

triangularNumber(2) // 3
getTriangularNumbers(5) // [1, 3, 6, 10, 15]

triangularNumber(220) // 24310
getTriangularNumbers(12) // [1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66, 78]
