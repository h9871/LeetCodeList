import UIKit

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        for target in nums {
            var count = 0
            for check in nums where target > check {
                count += 1
            }
            result.append(count)
        }
        return result
    }
}

let test = Solution()
test.smallerNumbersThanCurrent([6,5,4,8])


class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let dict = nums.sorted().enumerated().reduce(into: [Int: Int](), { $0[$1.1] = min($0[$1.1, default: Int.max], $1.0) })
        return nums.map({ dict[$0, default: 0] })
    }
}
