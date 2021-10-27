import UIKit

//561
class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var result = 0
        let sortArray = nums.sorted()
        for index in 0..<sortArray.count where index % 2 == 0 {
            result = result + min(sortArray[index], sortArray[index + 1])
            print(result)
        }
        return result
    }
}

let test = Solution()
test.arrayPairSum([1,4,3,2])


//class Solution {
//    func arrayPairSum(_ nums: [Int]) -> Int {
//        var sum = 0
//        for (index, value) in nums.sorted().enumerated() {
//            if index % 2 == 0 { sum += value }
//        }
//        return sum
//    }
//}
