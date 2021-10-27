import UIKit

//557
class Solution {
    func reverseWords(_ s: String) -> String {
        var result = ""
        let splitArray = s.split(separator: " ")
        for element in 0..<splitArray.count {
            result = result.count == 0 ? result + splitArray[element].reversed() : result + " " + splitArray[element].reversed()
        }
        let te = result == "s'teL ekat edoCteeL tsetnoc"
        print(te)
        return result
    }
}

let test = Solution()
test.reverseWords("Let's take LeetCode contest")


//func reverseWords(_ s: String) -> String {
//    var output = ""
//    let words = s.split(separator: " ")
//    for (index, word) in words.enumerated() {
//        var reversedWord = String(word.reversed())
//        if index != words.count-1 {
//            reversedWord += " "
//        }
//        output.insert(contentsOf: reversedWord, at: output.endIndex)
//    }
//    return output
//}
