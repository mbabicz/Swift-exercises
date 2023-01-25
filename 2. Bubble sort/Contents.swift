//Write a program to sort list of elements using the bubble sort algoritm
//numbers [3,6,5,1,7,8,4]
//expected [1, 3, 4, 5, 6, 7, 8]

var exampleNumbers = [3,6,5,1,7,8,4]

func bubbleSort(numbers: [Int]) -> [Int]{
    var sortedNumbers = numbers
    for _ in 0...exampleNumbers.count{
        for j in 1...sortedNumbers.count - 1 {
            if sortedNumbers[j-1] > sortedNumbers[j]{
                let greaterValue = sortedNumbers[j - 1]
                sortedNumbers[j-1] = sortedNumbers[j]
                sortedNumbers[j] = greaterValue
            }
        }
    }
    
    return sortedNumbers
}

print(exampleNumbers)

bubbleSort(numbers: exampleNumbers)
