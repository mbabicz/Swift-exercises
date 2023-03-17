//find all pairs in the array that sum up to given sum

func findPairs(_ array: [Int], _ sum: Int) -> [(Int, Int)]{
    var pairs = [(Int, Int)]()

    for i in 0..<array.count {
        for j in i..<array.count {
            if array[i] + array[j] == sum {
                pairs.append((array[i], array[j]))

            }
        }
    }
    return pairs
}

print(findPairs([1,3,6,7,8,2,6,2],8))

func findPairs2(_ array: [Int], _ sum: Int) -> [(Int, Int)]{
    var pairs = [(Int, Int)]()
    
    for i in 0 ..< array.count {
        let secondNumber = sum - array[i]
        for j in i+1 ..< array.count {
            if array[j] == secondNumber {
                pairs.append((array[i], array[j]))
            }
        }
    }
    return pairs
}

print(findPairs2([1,3,6,7,8,2,6,2],8))
