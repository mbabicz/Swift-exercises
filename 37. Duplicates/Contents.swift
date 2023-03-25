//Write a function that find duplicate number

func findDuplicateNumber(_ array: [Int]) -> [Int] {
    var numbers = [Int: Int]()
    var duplicates = [Int]()

    for num in array {
        numbers[num, default: 0] += 1
    }

    for (num, count) in numbers where count > 1 {
        duplicates.append(num)
    }

    return duplicates
}

findDuplicateNumber([1,2,3,1,5,6,7,3])
