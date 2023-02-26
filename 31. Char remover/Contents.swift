//Write a function that removes the nth letter from a given string

func removeNthLetter(from text: String, n: Int) -> String {
    var result = ""
    
    for (i, char) in text.enumerated(){
        if i != n {
            result.append(char)
        }
    }
    return result
}

//Write a function that removes all occurences of a given letter from a given string

func removeLetter(from text: String, letter: Character) -> String {
    var result = ""
    
    for char in text {
        if char != letter {
            result.append(char)
        }
    }
    return result
}

func replaceLetter(from text: String, oldLetter: Character, newLetter: Character) -> String {
    var result = ""
    
    for char in text {
        if char == oldLetter {
            result.append(newLetter)
        }
        else {
            result.append(char)
        }
    }
    return result
}

var text = "Some text to test"
removeNthLetter(from: text, n: 5) // "Some ext to test"
removeLetter(from: text, letter: "t") // "Some ex o es"
replaceLetter(from: text, oldLetter: "t", newLetter: "d") // "Some dexd do desd"
