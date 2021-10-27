import UIKit

class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var result: [Int] = []
        for (index, element) in index.enumerated() {
            result.insert(nums[index], at: element)
        }
        return result
    }
}

let test = Solution()
test.createTargetArray([0,1,2,3,4], [0,1,2,2,1])
test.createTargetArray([1,2,3,4,0], [0,1,2,3,0])
test.createTargetArray([1], [0])


//class Solution {
//    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
//        var target = [Int]()
//        target.reserveCapacity(nums.count)
//        for i in 0..<nums.count {
//            target.insert(nums[i], at: index[i])
//        }
//        return target
//    }
//}


//class Solution {
//    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
//        return nums.enumerated().reduce(into: [Int](), { $0.insert($1.1, at: index[$1.0]) })
//    }
//}
