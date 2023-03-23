//Write a function that find duplicate number

func findDuplicateNumber(_ array: [Int]) -> [Int] {
    var duplicates = [Int]()
    
    var numbers = [Int: Int]()
    
    for num in 0..<array.count{
        if let count = numbers[array[num]] {
            numbers[array[num]] = count + 1
        }
        else {
            numbers[array[num]] = 1
        }
    }
    
    for (num, count) in numbers {
        if count > 1 {
            duplicates.append(num)
        }
    }
    return duplicates
}

findDuplicateNumber([1,2,3,1,5,6,7,3])
