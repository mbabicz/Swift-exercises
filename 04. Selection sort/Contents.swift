//Write an algorithm for selection sort

func selectionSort(_ numbers: [Int]) -> [Int]{
    var sortedNumbers = numbers
    
    for i in 0..<numbers.count{
        var lowestValueIndex = i
        
        for j in (i + 1)..<numbers.count{
            if sortedNumbers[j] < sortedNumbers[lowestValueIndex]{
                lowestValueIndex = j
            }
        }

        if i != lowestValueIndex {
            sortedNumbers.swapAt(i, lowestValueIndex)
        }
    }
    return sortedNumbers
}

var numbers: [Int] = [3,1,5,1,7,8,3,6,2,0]
selectionSort(numbers) // [0, 1, 1, 2, 3, 3, 5, 6, 7, 8]
