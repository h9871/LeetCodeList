import UIKit

class Solution {
    func toLowerCase(_ str: String) -> String {
//        var resultString = ""
//        for element in str {
//            let asciiCode = element.asciiValue ?? 0
//            if asciiCode > UInt8(64), asciiCode < UInt8(91) {
//                resultString += String(UnicodeScalar(UInt8(asciiCode + 32)))
//            } else {
//                resultString += String(element)
//            }
//        }
//        return resultString
        return str.lowercased()
    }
}


let test = Solution()
test.toLowerCase("al&phaBET")


//class Solution {
//
//   func toLowerCase(_ s: String) -> String {
//
//       var lower = ""
//
//        for char in s.map({ String($0) }) {
//
//            if let ascii = Character(char).asciiValue, ascii >= 65, ascii <= 90 {
//                lower += String(Character(UnicodeScalar(ascii + 32)))
//            } else {
//                lower += String(char)
//            }
//        }
//        return lower
//    }
//}

//class Solution {
//    func toLowerCase(_ str: String) -> String {
//        return str.lowercased()
//    }
//}
