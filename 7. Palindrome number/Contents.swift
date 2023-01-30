//Check if number is palindrome

func isPalindrome(number: Int) -> Bool {
    var stringNum = String(number)
    var resersedStringNum = String(stringNum.reversed())
    
    return stringNum == resersedStringNum
    
}

isPalindrome(number: 10) //false
isPalindrome(number: -11) //false
isPalindrome(number: 12) //false
isPalindrome(number: 11) //true
isPalindrome(number: 121) //true
isPalindrome(number: 123) //false

