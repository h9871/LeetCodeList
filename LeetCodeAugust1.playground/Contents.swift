import UIKit

//class Solution {
//    func detectCapitalUse(_ word: String) -> Bool {
//        guard let isfirstCharUpper = self.isUpperChar(char: word.first) else {
//            print("ascii error!")
//            return false
//        }
//        var flag = 0
//        word.forEach { (c) in
//            if let upper = self.isUpperChar(char: c), upper {
//                flag += 1
//            } else if let lower = self.isLowerChar(char: c), lower {
//                flag -= 1
//            } else {
//                print("ascii error!")
//                return
//            }
//        }
//        return isfirstCharUpper ?
//            (flag == word.count) || (flag == -(word.count - 2))
//            : (flag == -(word.count))
//    }
//
//    func isUpperChar(char: Character?) -> Bool? {
//        guard let ascii = char?.asciiValue else { return nil }
//        return (ascii >= UInt8(65) && ascii <= UInt8(90))
//    }
//
//    func isLowerChar(char: Character?) -> Bool? {
//        guard let ascii = char?.asciiValue else { return nil }
//        return (ascii >= UInt8(97) && ascii <= UInt8(122))
//    }
//}

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        guard let isfirstCharUpper = word.first?.isUppercase else {
            print("error Data!")
            return false
        }
        var flag = 0
        word.forEach { (c) in
            if c.isUppercase {
                flag += 1
            } else if c.isLowercase {
                flag -= 1
            }
        }
        return isfirstCharUpper ?
            (flag == word.count) || (flag == -(word.count - 2))
            : (flag == -(word.count))
    }
}

let test = Solution()
test.detectCapitalUse("USA")
test.detectCapitalUse("leelcodE")
test.detectCapitalUse("FlaG")

// A ~ Z 65 90
// a ~ z 97 122


//class Solution {
//    func detectCapitalUse(_ word: String) -> Bool {
//        return word.contains { !$0.isUppercase } == false
//        || word.dropFirst().contains { $0.isUppercase } == false
//    }
//}
