//xor cipher encryption

import Foundation

let text = "I want this text to be encrypted"

let key = [UInt8]("keykeykey".utf8)
                  
func xorEncryption(text: String) -> [UInt8]{
    
    var encryptedText = [UInt8]()
    var text_ = [UInt8](text.utf8)
    print(text_)
    
    
    for i in text_.enumerated(){
        encryptedText.append(i.element ^ key[i.offset % key.count])
    }
    
    
    return encryptedText
}

xorEncryption(text: text)

//xor cipher decryption

import Foundation

func xorDecryption(encryptedText: [UInt8]) -> String {
    
    var decryptedText = [UInt8]()
    
    for i in encryptedText.enumerated(){
        decryptedText.append(i.element ^ key[i.offset % key.count])
    }
    
    return String(bytes: decryptedText, encoding: .utf8)!
}

xorDecryption(encryptedText: [34, 69, 14, 10, 11, 13, 75, 17, 17, 2, 22, 89, 31, 0, 1, 31, 69, 13, 4, 69, 27, 14, 69, 28, 5, 6, 11, 18, 21, 13, 14, 1])
