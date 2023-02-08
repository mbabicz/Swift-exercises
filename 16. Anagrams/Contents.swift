//Write a function that checks if two strings are anagrams of each other.

func anagramChecker(_ firstString: String, _ secondString: String) {

    if firstString.count != secondString.count {
        print("strings are not anagrams")
    } else {
        let firstSorted = String(firstString.sorted())
        let secondSorted = String(secondString.sorted())
        if firstSorted == secondSorted {
            print("strings are anagrams")
        } else {
            print("strings are not anagrams")
        }
    }
}

anagramChecker("listen", "silent") // true
anagramChecker("below", "elbow") // true

anagramChecker("cat", "dog") // false
anagramChecker("anagram", "anaaaagram") // false
