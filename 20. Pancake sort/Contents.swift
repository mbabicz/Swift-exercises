//Implement Pancake sort algorithm in Swift.

func pancakeSort(_ array: [Int])  -> [Int]{
    var sortedArray = array
    
    for i in (0 ..< sortedArray.count).reversed() {
        var maxIndex = 0
        for j in 0...i {
            if sortedArray[j] > sortedArray[maxIndex]{
                maxIndex = j
            }
        }
        for j in 0...(maxIndex/2){
            sortedArray.swapAt(j, maxIndex-j)
        }
        for j in 0...(i/2){
            sortedArray.swapAt(j, i-j)
        }
    }
    return sortedArray
}

var array: [Int] = [2,5,7,3,1,6,4,8]
pancakeSort(array) // output [1, 2, 3, 4, 5, 6, 7, 8]
