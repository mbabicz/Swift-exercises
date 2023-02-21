//Write a function to check if a given string is a pangram (contains all the letters of the alphabet)

func isPangram(_ str: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let lowercasedText = str.lowercased()

    for char in alphabet {
        if !lowercasedText.contains(char) {
            return false
        }
    }
    return true
}

isPangram("abcdefghijklmnopqrstuvwxyz dsaadsdsa") //true
isPangram("test string") //false
isPangram("dsaadsdsa test test") //false
isPangram("abcdefghijklmnopqrstuvwxyz") //true
