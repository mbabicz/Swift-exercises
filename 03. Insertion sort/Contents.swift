//Write algorithm for insertion sort

func insertionSort(numbers: [Int]) -> [Int]{
    var sortedNumbers = numbers
    
    for i in 1..<sortedNumbers.count{
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
    }
    return sortedNumbers
}

var numbers: [Int] = [5,2,1,6,3,7,8,9]
insertionSort(numbers: numbers) // [1, 2, 3, 5, 6, 7, 8, 9]
