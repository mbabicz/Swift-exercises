//convert int to roman

func convertToRoman(intNumber: Int) -> String {
    
    let romanNumbers = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    let arabicNumbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5 , 4, 1]
    
    var romanOutput = ""
    var startingNumber = intNumber
    
    
    for i in 0..<romanNumbers.count{
        var arabicNumber = arabicNumbers[i]
        
        var temp = startingNumber / arabicNumber
        print(temp)
        
        if temp > 0 {
            for _ in 0..<temp {
                romanOutput += romanNumbers[i]
            }
            startingNumber = startingNumber - (arabicNumber * temp)
            
        }
        
    }
    
    return romanOutput
    
}

convertToRoman(intNumber: 2254)
