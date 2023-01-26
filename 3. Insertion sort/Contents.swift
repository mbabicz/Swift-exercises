//Write analgoritm for insertion sort

//numbers [5, 2, 1, 6, 3, 7, 8, 9]
//expected output: [1, 2, 3, 5, 6, 7, 8, 9]


var numbers: [Int] = [5,2,1,6,3,7,8,9]

func insertionSort(numbers: [Int]) -> [Int]{
    var sortedNumbers = numbers
    
    for i in 1...sortedNumbers.count{
        var index = i
        while index > 0{
            if sortedNumbers[index] < sortedNumbers[index-1]{
                sortedNumbers.swapAt(index, index-1)
                index = index - 1
            }
            else {
                break
            }
        }
        print(sortedNumbers)
    }
    return sortedNumbers
}

print(numbers)

insertionSort(numbers: numbers)

