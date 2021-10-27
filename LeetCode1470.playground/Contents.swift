import UIKit

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result: [Int] = []
        for index in 0..<n {
            result.append(nums[index])
            result.append(nums[index + n])
        }
        return result
    }
}

let test = Solution()
test.shuffle([2,5,1,3,4,7], 3)
test.shuffle([1,2,3,4,4,3,2,1], 4)
test.shuffle([1,1,2,2], 2)

//class Solution {
//    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
//        zip(nums, nums.dropFirst(n)).flatMap { [$0, $1] }
//    }
//}
