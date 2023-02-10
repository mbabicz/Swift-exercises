//Implement the binary search algorithm in Swift

func binarySearch(_ array: [Int], targetValue: Int) -> Int? {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let guessValue = array[middleIndex]
        
        if guessValue == targetValue {
            return middleIndex
        } else if guessValue > targetValue {
            rightIndex = middleIndex - 1
        } else {
            leftIndex = middleIndex + 1
        }
    }
    return nil
}

binarySearch([2,5,7,9,12,16,18,22,31], targetValue: 5) //output = 1
binarySearch([2,5,7,9,12,16,18,22,31], targetValue: 12) //output = 4
