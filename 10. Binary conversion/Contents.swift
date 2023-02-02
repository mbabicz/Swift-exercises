//decimal to binary conversion

func decimalToBinary(number: Int) -> String {
    var decimal = number
    var binary = ""
    
    while decimal > 0 {
        binary = String(decimal % 2) + binary
        decimal /= 2
    }
    
    return binary
    
}

decimalToBinary(number: 200)


//binary to decimal conversion

func binaryToDecimal(number: String) -> Int {
    
    return Int(number, radix: 2)!
    
}

binaryToDecimal(number: "11001000")
