import UIKit

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let greatestValue = candies.sorted().last ?? 0
        return candies.map { $0 + extraCandies >= greatestValue }
    }
}

let test = Solution()
test.kidsWithCandies([2,3,5,1,3], 3)
test.kidsWithCandies([4,2,1,1,2], 1)
test.kidsWithCandies([12,1,12], 10)


//class Solution {
//    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
//        var max = Int.min
//        for candy in candies {
//            if max < candy {
//                max = candy
//            }
//        }
//
//        var result: [Bool] = []
//        for candy in candies {
//            result.append(candy + extraCandies >= max)
//        }
//
//        return result
//    }
//}

//class Solution {
//    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
//        let max = candies.max()!
//        return candies.map { $0 + extraCandies >= max }
//    }
//}
