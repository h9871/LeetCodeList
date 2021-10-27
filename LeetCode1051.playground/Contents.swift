import UIKit

// 1051
class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var count = 0
        let sorted = heights.sorted()
        for (index, element) in heights.enumerated() where sorted[index] != element {
            count += 1
        }
        return count
    }
}

let test = Solution()
test.heightChecker([1,1,4,2,1,3])
test.heightChecker([5,1,2,3,4])
test.heightChecker([1,2,3,4,5])


//func heightChecker(_ heights: [Int]) -> Int {
//    return heights.sorted().enumerated().reduce(0) {
//        $0 + ($1.element != heights[$1.offset] ? 1 : 0)
//    }
//}


//class Solution {
//    func heightChecker(_ heights: [Int]) -> Int {
//        var sortedHeights = heights.sorted()
//        return sortedHeights.enumerated().reduce(0, { (accumulator, current) in
//            return accumulator + (heights[current.0] != current.1 ? 1 : 0)
//        })
//    }
//}
