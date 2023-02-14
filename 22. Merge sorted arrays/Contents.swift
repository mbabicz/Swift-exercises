//Merge two sorted arrays

func mergeSortedArrays(_ array1: [Int], _ array2: [Int]) -> [Int]{
    
    var mergedArray: [Int] = []
    var i = 0, j = 0
    
    while i < array1.count && j < array2.count {
        if array1[i] < array2[j] {
            mergedArray.append(array1[i])
            i += 1
        } else {
            mergedArray.append(array2[j])
            j += 1
        }
    }
    
    while i < array1.count {
        mergedArray.append(array1[i])
        i += 1

    }
    
    while j < array2.count {
        mergedArray.append(array2[j])
        j += 1

    }
    while i < array1.count {
        mergedArray.append(array1[i])
        i += 1

    }
    while i < array1.count {
        mergedArray.append(array1[i])
        i += 1

    }
    return mergedArray
}

var array1: [Int] = [1,2,3,7]
var array2: [Int] = [4,6,8,9]

mergeSortedArrays(array1, array2) // output: [1, 2, 3, 4, 6, 7, 8, 9]
