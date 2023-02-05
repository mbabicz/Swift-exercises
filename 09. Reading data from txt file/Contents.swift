//read data from file

import Foundation

func readDataFromTextFile() -> [String] {
  let filePath = Bundle.main.path(forResource: "file", ofType: "txt")!
  do {
    let data = try String(contentsOfFile: filePath, encoding: .utf8)
    let dataArray = data.components(separatedBy: " ")
    return dataArray
  } catch {
    print("Error reading data from file: \(error.localizedDescription)")
    return []
  }
}

readDataFromTextFile()
