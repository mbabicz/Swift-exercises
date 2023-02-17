//Quick sort implementation using swift

func quickSort(_ array: [Int]) -> [Int]{
    
    guard array.count > 1 else { return array }
    
    let pivot = array[array.count - 1]
    let less = array.filter{ $0 < pivot }
    let equal = array.filter{ $0 == pivot }
    let greater = array.filter{ $0 > pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

let unsortedArray = [2,6,1,9,7,3,0,4]
let sortedArray = quickSort(unsortedArray)
print(sortedArray) // [0, 1, 2, 3, 4, 6, 7, 9]

