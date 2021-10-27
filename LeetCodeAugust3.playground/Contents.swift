import UIKit

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let regex = try? NSRegularExpression(pattern: "[a-z0-9]", options: .caseInsensitive)
        let nsS = s as NSString
        let formatString = regex?.matches(in: s, options: [], range: NSRange(location: 0, length: nsS.length)).map {
            nsS.substring(with: $0.range)
        }
        
        guard let target = formatString else {
            print("error")
            return false
        }
        
        print(target)
        for index in 0..<target.count / 2 {
//            print(target[index] + " : " + target[(target.count - 1) - index])
            if target[index].uppercased() != target[(target.count - 1) - index].uppercased() { return false }
        }
        return true
    }
}

let test = Solution()
test.isPalindrome("A man, a plan, a canal: Panama")
//test.isPalindrome("race a car")
//test.isPalindrome("ab")
//test.isPalindrome(" ")
//test.isPalindrome("")
//test.isPalindrome("0P")


//class Solution {
//    func isPalindrome(_ s: String) -> Bool {
//        var sArray = [String]()
//        let letters = CharacterSet.letters
//        let decimals = CharacterSet.decimalDigits
//        for char in s {
//            if char.isNumber || char.isLetter {
//                sArray.append(char.lowercased())
//            }
//        }
//
//        let lastIndex = sArray.count - 1
//        for i in 0..<sArray.count/2 {
//            if sArray[i] != sArray[lastIndex - i] { return false }
//        }
//
//        return true
//    }
//}
