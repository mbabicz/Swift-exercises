//Write a program to sort list of elements using the bubble sort algorithm

func bubbleSort(_ numbers: [Int]) -> [Int]{
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

var exampleNumbers = [3,6,5,1,7,8,4]
bubbleSort(exampleNumbers) // [1, 3, 4, 5, 6, 7, 8]
