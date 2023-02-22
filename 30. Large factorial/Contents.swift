//Write a function that calculates the factorial of a large number n and return the result as a string.

func largeFactorial(_ n: Int) -> String {
    var result = [1]
    for i in 1...n {
        result = multiply(x: result, y: i)
    }
    // Remove leading 0 from the result
    while result.count > 1 && result.last! == 0 {
        result.removeLast()
    }
    return result.map(String.init).reversed().joined()
}

func multiply(x: [Int], y: Int) -> [Int] {
    var result = [Int](repeating: 0, count: x.count + 1)
    var carry = 0
    for i in 0..<x.count {
        let prod = x[i] * y + carry
        result[i] = prod % 10
        carry = prod / 10
    }
    if carry > 0 {
        result[x.count] = carry
    }
    return result
}

let n = 50
let factorial = largeFactorial(n)
print("\(n)! = \(factorial)")
