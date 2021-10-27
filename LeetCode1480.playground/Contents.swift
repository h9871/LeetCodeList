import UIKit

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sumIndex = 0
        var resultArray: [Int] = []
        nums.forEach { (index) in
            sumIndex += index
            resultArray.append(sumIndex)
        }
        return resultArray
    }
}


let test = Solution()
test.runningSum([1,2,3,4])
test.runningSum([1,1,1,1,1])
test.runningSum([3,1,2,10,1])

//var sum = 0
//return nums.map{(sum+=$0, sum).1}
