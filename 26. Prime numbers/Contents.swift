//Get prime numbers in range

func primesInRange(_ a: Int, _ b: Int) -> [Int] {
    
    var primes = [Int]()
    
    for number in a...b where isPrime(number){
        primes.append(number)
    }
    
    if !primes.isEmpty {
        print("Prime numbers: \(primes)")
    } else {
        print("No prime numbers in range")
    }
    return primes
}

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

primesInRange(40, 80)
