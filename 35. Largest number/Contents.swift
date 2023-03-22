//Write a function that returns one and two largest number from array
//Write a function that returns largest and lowest number from array


func findLargestNumber(_ array: [Int]) -> Int {
    var largestNum = array[0]
    
    for i in 0..<array.count{
        if array[i] > largestNum {
            largestNum = array[i]
        }
    }
    return largestNum
}

print(findLargestNumber([1,2,3,5,7,2,6,1]))

func findTwoLargestNumber(_ array: [Int]) -> (Int, Int) {
    var largestNum = array[0]
    var secondLargestNum = array[0]
    
    for i in 0..<array.count{
        if array[i] > largestNum {
            largestNum = array[i]
        }
        else if array[i] < largestNum && array[i] > secondLargestNum {
            secondLargestNum = array[i]
        }
    }
    return (largestNum, secondLargestNum)
}

print(findTwoLargestNumber([1,2,3,5,7,2,6,1]))

func findMinMaxNumber(_ array: [Int]) -> (Int, Int) {
    var largestNum = array[0]
    var lowestNum = array[0]
    
    for i in 0..<array.count{
        if array[i] > largestNum {
            largestNum = array[i]
        }
        else if array[i] < lowestNum {
            lowestNum = array[i]
        }
    }
    return (largestNum, lowestNum)
}

print(findMinMaxNumber([1,2,3,5,7,2,6,1]))

