import UIKit

// 283
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        for element in nums where element == 0 {
            if let index = nums.firstIndex(of: element) {
                nums.remove(at: index)
                nums.append(0)
            }
        }
    }
}

let test = Solution()
var t = [0,1,0,3,12]
test.moveZeroes(&t)
print(t)


//class Solution {
//    func moveZeroes(_ nums: inout [Int]) {
//        guard nums.count > 1 else { return }
//        var zeroPtr = 0
//        var nonZeroPtr = 0
//
//        for num in nums{
//            if num != 0{
//                swap(&nums, zeroPtr, nonZeroPtr)
//                zeroPtr += 1
//            }
//            nonZeroPtr += 1
//        }
//    }
//
//    func swap(_ nums: inout [Int], _ index1: Int, _ index2: Int ){
//        let temp = nums[index1]
//        nums[index1] = nums[index2]
//        nums[index2] = temp
//    }
//}

//func moveZeroes(_ nums: inout [Int]) {
//       let count = nums.count
//       nums = nums.filter { $0 != 0}
//       for _ in 0 ..< (count - nums.count) { nums.append(0) }
//}
