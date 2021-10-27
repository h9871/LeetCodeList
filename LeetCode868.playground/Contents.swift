import UIKit

// 868
class Solution {
    func binaryGap(_ N: Int) -> Int {
        var count = 0
        var moveCount = 0
        let binary = String(N, radix: 2)
        for element in binary {
            if element == "1" {
                count = max(moveCount, count)
                moveCount = 0
            }
            moveCount += 1
        }
        return count
    }
}

let test = Solution()
test.binaryGap(22)
test.binaryGap(5)
test.binaryGap(6)
test.binaryGap(8)


//class Solution {
//    func binaryGap(_ N: Int) -> Int {
//        let str = String(N, radix: 2) // to binary using 2
//        var distance: Int = 0
//        var last1: Int = 0
//        for (i,bit) in str.enumerated() {
//            if String(bit) == "1" {
//                distance = max(distance, i - last1)
//                last1 = i
//            }
//        }
//        return distance
//    }
//}
