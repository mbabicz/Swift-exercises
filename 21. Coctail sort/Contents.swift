//Implement coctail sort algoritm in Swift.

func coctailSort(_ array: [Int]) -> [Int]{
    var sortedArray = array
    var leftIndex = 0
    var rightIndex = sortedArray.count - 1
    var swapped = true
    print("array: \(sortedArray)")
    
    while swapped {
        swapped = false
        for i in leftIndex ..< rightIndex {
            if sortedArray[i] > sortedArray[i+1]{
                sortedArray.swapAt(i, i+1)
                swapped = true
            }
        }
                
        for i in (leftIndex ..< rightIndex).reversed(){
            if sortedArray[i] > sortedArray[i+1]{
                sortedArray.swapAt(i, i+1)
                swapped = true
            }
        }
    }
    print("sorted array: \(sortedArray)")
    return sortedArray
}

coctailSort([2,6,1,5,8,9,3])
coctailSort([5,1,4,2,8,0,2])


/*
 Output:
 
 array: [2, 6, 1, 5, 8, 9, 3]
 sorted array: [1, 2, 3, 5, 6, 8, 9]
 array: [5, 1, 4, 2, 8, 0, 2]
 sorted array: [0, 1, 2, 2, 4, 5, 8]
 
*/
