//SWIFT AES ENCRYPTION/DECRYPTION USING CRYPTOKIT LIBRARY


import CryptoKit
import Foundation

let nonce = Data(count: 12)
let key = "secretkey1234567"
let text = "text to encrypt"

func aesEncryption(text: String, key: String, nonce: Data) -> String? {

    let textData = text.data(using:.utf8)!
    let keyData = key.data(using: .utf8)!
    
    let encryptionKey = SymmetricKey(data: keyData)
    
    do {
        let nonce = try AES.GCM.Nonce(data: nonce)
        let encryptedData = try AES.GCM.seal(textData, using: encryptionKey, nonce: nonce)
        return encryptedData.combined!.base64EncodedString()
    } catch {
        print("Unexpected error: \(error)")
        return nil
    }
}

func aesDecryption(encryptedText: String, key: String) -> String? {
    
    let encryptedTextData = Data(base64Encoded: encryptedText)!
    let keyData = key.data(using: .utf8)!
    
    let encryptionKey = SymmetricKey(data: keyData)
    
    do {
        let sealedBox = try AES.GCM.SealedBox(combined: encryptedTextData)
        let decryptedData = try AES.GCM.open(sealedBox, using: encryptionKey)
        return String(data: decryptedData, encoding: .utf8)
    } catch {
        print("Decryption failed:  \(error)")
        return nil
    }

}

print(aesEncryption(text: text, key: key, nonce: nonce)!)


let encrypted = aesEncryption(text: text, key: key, nonce: nonce)


print(aesDecryption(encryptedText: encrypted!, key: key)!)
