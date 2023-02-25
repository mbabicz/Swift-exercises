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

//binary to decimal conversion
func binaryToDecimal(number: String) -> Int {
    guard let decimal = Int(number, radix: 2) else {
        return 0
    }
    return decimal
}

decimalToBinary(number: 200) // 11001000
binaryToDecimal(number: "11001000") // 200
