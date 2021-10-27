import UIKit

// 728
class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result: [Int] = []
        for element in left...right where !String(element).contains("0") {
            var input = false
            for char in String(element) {
                input = (element % Int(String(char))! == 0) ? true : false
                if !input { break }
            }
            if input { result.append(element) }
        }
        return result
    }
}

let test = Solution()
test.selfDividingNumbers(1, 10000)


//class Solution {
//    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
//        var result = [Int]()
//
//       outerLoop: for i in left...right {
//            for c in String(i) {
//                if  c == "0"  || i % Int(String(c))! != 0 {
//                    continue outerLoop
//                }
//            }
//            result.append(i)
//        }
//
//        return result
//    }
//}


//func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
//    var output = [Int]()
//    for i in left...right {
//        if isSelfDividing(i) { output.append(i) }
//    }
//    return output
//}
//
//func isSelfDividing(_ num: Int) -> Bool {
//    var value = num
//    while value > 0 {
//        let digit = value % 10
//        if digit > 0, num % digit == 0 {
//            value /= 10
//        } else {
//            return false
//        }
//    }
//    return true
//}
