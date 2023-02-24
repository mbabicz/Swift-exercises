// merge sort algorithm

func mergeSort(array: [Int]) -> [Int]{
    guard array.count > 1 else { return array}
    let middleIndex = array.count/2
    
    let leftArray = mergeSort(array: Array(array[0..<middleIndex]))
    let rightArray = mergeSort(array: Array(array[middleIndex..<array.count]))
    
    return merge(left: leftArray, right: rightArray)
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var sortedArray: [Int] = []
    var leftIndex = 0, rightIndex = 0
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex]{
            sortedArray.append(left[leftIndex])
            leftIndex += 1
        }
        else{
            sortedArray.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count{
        sortedArray.append(left[leftIndex])
        leftIndex += 1
    }
    while rightIndex < right.count{
        sortedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return sortedArray
}

mergeSort(array: [3,2,6,1,5,8,2])
