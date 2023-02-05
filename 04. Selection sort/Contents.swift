//Write an algoritm for selection sort

//numbers [3, 1, 5, 1, 7, 8, 3, 6, 2, 0]
//expected output: [0, 1, 1, 2, 3, 3, 5, 6, 7, 8]


var numbers: [Int] = [3,1,5,1,7,8,3,6,2,0]

func selectionSort(numbers: [Int]) -> [Int]{
    var sortedNumbers = numbers
    
    for i in 0...numbers.count-1{
        var lowestValueIndex: Int = i
        
        for j in (i+1)..<numbers.count{
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

print(numbers)

selectionSort(numbers: numbers)

