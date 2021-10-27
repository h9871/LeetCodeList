import UIKit

// 496
class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var resultArray:[Int] = []
        var targetArray:[Int] = nums2
        var check = false
        nums1.forEach { (element) in
            for (index, target) in targetArray.enumerated() where element < target {
                resultArray.append(target)
                targetArray.removeSubrange(0...index)
                check = true
                break
            }
            for (index, target) in targetArray.enumerated() where element == target {
                targetArray.remove(at: index)
            }
            if !check { resultArray.append(-1) }
            check = false
        }
        return resultArray
    }
}

let test = Solution()
test.nextGreaterElement([4,1,2], [1,3,4,2])
test.nextGreaterElement([2,4], [1,2,3,4])
