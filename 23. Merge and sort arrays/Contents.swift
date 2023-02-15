//Merge and sort given arrays

func mergeArrays(_ arrays: [[Int]]) -> [Int] {
    
    var mergedArrays = [Int]()
    
    for array in arrays {
        mergedArrays.append(contentsOf: array)
    }
        
    return mergedArrays.sorted()
}

var arrays: [[Int]] = [[3,2,5,7], [4,8,2,9], [1,6,5,2], [4,7,1,1]]

mergeArrays(arrays) // output: [1, 1, 1, 2, 2, 2, 3, 4, 4, 5, 5, 6, 7, 7, 8, 9]
