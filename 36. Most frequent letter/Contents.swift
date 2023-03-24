//Write a function that returns most frequent letter in a given string

func findMostFrequentLetters(_ text: String) -> [Character] {
    var letterCount = [Character : Int]()
    
    for char in text.lowercased() {
        if let count = letterCount[char] {
            letterCount[char] = count + 1
        }
        else {
            letterCount[char] = 1
        }
    }

    var mostFrequentLetters = [Character]()
    var highestCount = 0
    
    for (letter, count) in letterCount {
        if count > highestCount {
            mostFrequentLetters = [letter]
            highestCount = count
        }
        else if count == highestCount {
            mostFrequentLetters.append(letter)
        }
    }
    
    return mostFrequentLetters
}

