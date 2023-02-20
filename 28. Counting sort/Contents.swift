//Implement counting sort using Swift

func countingSort(_ array: [Int]) -> [Int] {
    
    var sortedArray = [Int]()
    let maxElement = array.max() ?? 0
    
    //create a count array to store the count of each object
    var counts = [Int](repeating: 0, count: maxElement + 1)
    
    //count each element and place the count at its index
    for element in array {
        counts[element] += 1
    }
    
    //iterate through the count array and place the value at the sorted array
    for i in 0..<counts.count {
        let count = counts[i]
        for _ in 0..<count {
            sortedArray.append(i)
        }
    }
    return sortedArray
}

print(countingSort([2,5,7,8,3,1,6,9,1]))
