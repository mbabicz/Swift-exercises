//convert int to roman

func convertToRoman(_ intNumber: Int) -> String {
    let romanNumerals = [
        (1000, "M"),
        (900, "CM"),
        (500, "D"),
        (400, "CD"),
        (100, "C"),
        (90, "XC"),
        (50, "L"),
        (40, "XL"),
        (10, "X"),
        (9, "IX"),
        (5, "V"),
        (4, "IV"),
        (1, "I")
    ]
    
    var romanOutput = ""
    var startingNumber = intNumber
    
    for (arabic, roman) in romanNumerals {
        let temp = startingNumber / arabic
                
        if temp > 0 {
            for _ in 0..<temp {
                romanOutput += roman
            }
            startingNumber -= temp * arabic
        }
    }
    return romanOutput
}

convertToRoman(2254)// MMCCLIV
