//Caesar cipher - encryption and decryption

let alphabet = "abcdefghijklmnopqrstuvwxyz"

func caesarEncyption(_ message: String, _ shift: Int) -> String {
    let lowercaseMessage = message.lowercased()
    var encrypted = ""
    
    for char in lowercaseMessage {
        //check if char exist in alphabet
        if let index = alphabet.firstIndex(of: char){
            let shiftedIndex = (alphabet.utf16.distance(from: alphabet.startIndex, to: index) + shift) % alphabet.count
            encrypted.append(alphabet[alphabet.index(alphabet.startIndex, offsetBy: shiftedIndex)])
        }
    }
    
    return encrypted
}

caesarEncyption("Text", 5)

//decryption
func ceaserDecryption(_ message: String, _ shift: Int) -> String {
    let lowercaseMessage = message.lowercased()
    var decrypted = ""
    
    for char in lowercaseMessage {
        //check if char exist in alphabet
        if let index = alphabet.firstIndex(of: char){
            let shiftedIndex = (alphabet.count + index.utf16Offset(in: alphabet) - shift) % alphabet.count
            decrypted.append(alphabet[alphabet.index(alphabet.startIndex, offsetBy: shiftedIndex)])
        }
    }
    
    return decrypted
}

ceaserDecryption("yjcy", 5)
