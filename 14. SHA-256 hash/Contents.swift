//sha-256 hash encryption

import CommonCrypto
import Foundation

let textToEncrypt = "Test text 123"

guard let inputData = textToEncrypt.data(using: .utf8) else {
    fatalError("Couldn't convert string \(textToEncrypt) to data")
}

func sha256(data: Data) -> Data {
    var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
    data.withUnsafeBytes {
        _ = CC_SHA256($0.baseAddress, CC_LONG(data.count), &hash)
    }
    return Data(hash)
}

let sha256Data = sha256(data: inputData)
let sha256String = sha256Data.map { String(format: "%02x", $0) }.joined()

print(sha256String)
