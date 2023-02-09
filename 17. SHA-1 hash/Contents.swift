//Write an SHA-1 hash using the CommonCrypto library 

import Foundation
import CommonCrypto

func sha1(_ string: String) -> String {
    
    let data = Data(string.utf8)
    
    //create UInt8 array that will store hash values
    var digest = [UInt8](repeating: 0, count:Int(CC_SHA1_DIGEST_LENGTH))
    
    //call CommonCrypto function and save results to digest
    data.withUnsafeBytes {
        _ = CC_SHA1($0.baseAddress, CC_LONG(data.count), &digest)
    }
    
    //conversion
    let hexBytes = digest.map { String(format: "%02hhx", $0) }
    return hexBytes.joined()
}

sha1("Message to encrypt")

