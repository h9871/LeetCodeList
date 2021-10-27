import UIKit

// 942
class Solution {
    func diStringMatch(_ S: String) -> [Int] {
        var result: [Int] = [Int](repeating: 0, count: S.count + 1)
        var startIndex = 0
        var endIndex = S.count

        for (index, element) in S.enumerated() {
            switch element {
            case "I":
                result[index] = startIndex
                startIndex += 1
            default:
                result[index] = endIndex
                endIndex -= 1
            }
        }
        result[S.count] = startIndex
        return result
    }
}

let test = Solution()
test.diStringMatch("IDID")



//class Solution {
//    func diStringMatch(_ S: String) -> [Int] {
//        var res:[Int] = [Int](repeating: 0, count:S.count + 1)
//        var min = 0
//        var max = S.count
//        var arr = Array(S)
//        for i in 0..<S.count {
//            if arr[i] == "I"{
//                res[i] = min
//                min = min + 1
//            }else{
//                res[i] = max
//                max = max - 1
//            }
//        }
//        res[S.count] = min
//        return res
//    }
//}


//class Solution {
//    func diStringMatch(_ S: String) -> [Int] {
//        var low = 0
//        var high = S.count
//        var result = [Int]()
//        for char in S{
//            if char == "I"{
//                result.append(low)
//                low += 1
//            }
//            else{
//               //   char == "D"
//                result.append(high)
//                high -= 1
//            }
//        }
//        result.append(high)
//        return result
//    }
//}
