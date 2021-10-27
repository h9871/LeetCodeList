import UIKit

// 821
//class Solution {
//    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
//        var result:[Int] = []
//        for index in 0..<S.count {
//            var count = 0
//            var leftCount = 0
//            var notFind = false
//            for target in index..<S.count {
//                if S[S.index(S.startIndex, offsetBy: target)] == C {
//                    break
//                } else {
//                    count += 1
//                }
//            }
//            for target in 0..<index {
//                if S[S.index(S.startIndex, offsetBy: index - target)] == C {
//                    notFind = true
//                    break
//                } else {
//                    leftCount += 1
//                }
//            }
//            result.append(((leftCount < count) && notFind) ? leftCount : count)
//        }
//        print(result)
//        return result
//    }
//}

class Solution {
    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        var result: [Int] = []
        var select: [Int] = []
        for index in 0..<S.count where S[S.index(S.startIndex, offsetBy: index)] == C {
            select.append(index)
        }
        for index in 0..<S.count {
            var least = S.count
            for input in select {
                least = min(abs(index - input), least)
            }
            result.append(least)
        }
        print(result)
        return result
    }
}

let test = Solution()
test.shortestToChar("loveleetcode", "e")
test.shortestToChar("abaa", "b")


//class Solution {
//    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
//       var res = Array(repeating: 0, count: S.count)
//       let n = S.count
//       var pos = -n
//
//       for i in 0..<n {
//           let index = S.index(S.startIndex, offsetBy: i)
//           if S[index] == C {
//               pos = i
//           }
//           res[i] = i - pos
//       }
//
//        for i in (0..<n).reversed() {
//            let index = S.index(S.startIndex, offsetBy: i)
//            if S[index] == C {
//                pos  = i
//            }
//            res[i] = min(res[i], abs(pos - i))
//        }
//
//        return res
//    }
//}
