import UIKit

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var result = s
        for (index, element) in s.enumerated() {
            result.remove(at: result.index(result.startIndex, offsetBy: indices[index]))
            result.insert(element, at: result.index(result.startIndex, offsetBy: indices[index]))
        }
        return result
    }
}

let test = Solution()
test.restoreString("codeleet", [4,5,6,7,0,2,1,3])
test.restoreString("abc", [0,1,2])
test.restoreString("aiohn", [3,1,4,2,0])

//class Solution {
//    func restoreString(_ s: String, _ indices: [Int]) -> String {
//        var str = Array<Character>(repeating: Character("a"), count: s.count)
//        for (i, char) in s.enumerated() {
//            str[indices[i]] = char
//        }
//        return String(str)
//    }
//}

//class Solution {
//    func restoreString(_ s: String, _ indices: [Int]) -> String {
//        return String(Array(s).enumerated().reduce(into: Array(s), { $0[indices[$1.0]] = $1.1 }))
//    }
//}
