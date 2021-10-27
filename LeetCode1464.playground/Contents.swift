import UIKit

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        let sortedArray = nums.sorted { $0 > $1 }
        return (sortedArray[0] - 1) * (sortedArray[1] - 1)
    }
}

let test = Solution()
test.maxProduct([3,4,5,2])
test.maxProduct([1,5,4,5])
test.maxProduct([3,7])


//class Solution {
//    func maxProduct(_ nums: [Int]) -> Int {
//        let (min1, min2, max2, max1) = nums.reduce(into: (Int(Int.max), Int(Int.max), Int(Int.min), Int(Int.min)), {
//            let a = $1 - 1
//            if a < 0 {
//                if a < $0.0 {
//                    $0.1 = $0.0
//                    $0.0 = a
//                } else if a < $0.1 {
//                    $0.1 = a
//                }
//            } else {
//                if a > $0.3 {
//                    $0.2 = $0.3
//                    $0.3 = a
//                } else if a > $0.2 {
//                    $0.2 = a
//                }
//            }
//        })
//        return max((min1 < 0 && min2 < 0 ? min1 * min2 : 0), (max1 > 0 && max2 > 0 ? max1 * max2 : 0))
//    }
//}
