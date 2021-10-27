import UIKit

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var count = 0
        var lCount = 0
        var RCount = 0
        s.forEach { (c) in
            if c == "L" {
                lCount += 1
            } else {
                RCount += 1
            }
            
            if lCount == RCount {
                count += 1
                lCount = 0
                RCount = 0
            }
        }
        return count
    }
}

let test = Solution()
test.balancedStringSplit("RLRRRLLRLL")


//func balancedStringSplit(_ s: String) -> Int {
//
//    var balance = 0
//    var count = 0
//
//    for i in s {
//        if i == "R" {
//            balance += 1
//        } else {
//            balance -= 1
//        }
//
//        if balance == 0 {
//            count += 1
//        }
//    }
//
//    return count
//}


//func balancedStringSplit(_ s: String) -> Int {
//    var accumulator = 0
//    var currentState = 0
//    for leftOrRight in s {
//        currentState += leftOrRight == "L" ? 1 : -1
//        if currentState == 0 {
//            accumulator += 1
//        }
//    }
//    return accumulator
//}
