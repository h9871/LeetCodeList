import UIKit

class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        for (index, element) in nums.enumerated() {
            if (index+1) % 2 == 0 {
                for _ in 0..<nums[index-1] {
                    result.append(element)
                }
            }
        }
        return result
    }
}

let test = Solution()
test.decompressRLElist([3,5,1,3])

//
//class Solution {
//    func decompressRLElist(_ nums: [Int]) -> [Int] {
//        var sol = [Int]()
//        for i in stride(from: 0, to: nums.count, by: 2) {
//            sol += Array(repeating: nums[i+1], count: nums[i])
//        }
//        return sol
//    }
//}
