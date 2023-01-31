//Save example array to txt file

import Foundation

let array = ["saving", "this", "text", "to", "a", "file", ".", "txt"]

func saveArrayToFile(array: [String]){
    let joinedArray = array.joined(separator: " ")
    print(joinedArray)
    var path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("file.txt")
    do {
        try? joinedArray.write(to: path, atomically: true, encoding: .utf8)
    }
}

saveArrayToFile(array: array)
