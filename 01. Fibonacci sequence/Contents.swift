//Write a method that returns the nth element of the Fibonacci Sequence


//1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89

//f(n) = f(n-1) - f(n+1)

func fibonacci1(n: Int) -> Int {
    guard n > 2 else { return 1}
    return fibonacci1(n: n-1) + fibonacci1(n: n-2)
    
}

fibonacci1(n: 10)

func fibonacciSeries(n: Int) -> [Int]{
    var array = [Int]()
    for index in 0...n{
        let output = fibonacci1(n: index)
        array.append(output)
    }
    return array
}

fibonacciSeries(n: 10)
