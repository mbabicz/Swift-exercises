// convert string date to date 
// 20220312 -> 2022/03/12

import Foundation

func convertDate(dateString: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyyMMdd"
    
    guard let date = dateFormatter.date(from: dateString) else {
        return "Invalid input date"
    }
    
    dateFormatter.dateFormat = "yyyy/MM/dd"
    let dateOutput = dateFormatter.string(from: date)
    return dateOutput
}


func convertDate2(dateString: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMddyyyy"
    
    guard let date = dateFormatter.date(from: dateString) else {
        return "Invalid input date"
    }
    dateFormatter.dateFormat = "MM/dd/yyyy"
    let dateOutput = dateFormatter.string(from: date)
    return dateOutput
    
}

let dateString = "20220312"
let dateString2 = "03122022"
convertDate(dateString: dateString)
convertDate2(dateString: dateString2)

