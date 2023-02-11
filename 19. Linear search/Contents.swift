//Implement the linear search algorithm in Swift

func linearSearch(_ array: [Int], targetValue: Int) -> Int? {
    for (index, value) in array.enumerated() {
        if value == targetValue {
            return index
        }
    }
    return nil
}

linearSearch([2,4,7,3,7,1,8], targetValue: 7)
