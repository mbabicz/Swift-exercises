func reverseString1(_ str: String) -> String {
    return String(str.reversed())
}
reverseString1("string")


func reverseString2(_ str: String) -> String {
    
    var output: String = ""
    
    for char in str{
        output = String(char) + output
    }
    return output
}
reverseString2("string")


func reverseString3(_ str: String) -> String {
    return str.reduce(into: ""){ output , char in
        output.insert(char, at: output.startIndex)
    }
}
reverseString3("string")
