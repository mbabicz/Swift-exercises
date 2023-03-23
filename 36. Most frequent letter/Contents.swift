//Write a function that returns most frequent letter in a given string

func findMostFrequentLetter(_ text: String) -> Character?{
    var letterCount = [Character : Int]()
    
    for char in text.lowercased() {
        if let count = letterCount[char] {
            letterCount[char] = count + 1
        }
        else {
            letterCount[char] = 1
        }
    }

    var mostFrequentLetter: Character?
    var highestCount = 0
    for (letter, count) in letterCount {
        if count > highestCount {
            mostFrequentLetter = letter
            highestCount = count
        }
    }
    return mostFrequentLetter
}

findMostFrequentLetter("Test")
