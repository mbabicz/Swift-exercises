//Find the greatest common divisor of two numbers

func gcd(_ a: Int, _ b: Int) -> Int {
    var x = a
    var y = b
    while y != 0 {
        let temp = y
        y = x % y
        x = temp
    }
    return x
}

print(gcd(100, 1000)) // 100
print(gcd(16, 128)) // 16
print(gcd(8, 48)) // 8
print(gcd(10246, 16248)) // 2

