import UIKit

class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var count = 0
        for index in 0..<startTime.count
            where startTime[index] <= queryTime && endTime[index] >= queryTime {
            count += 1
        }
        return count
    }
}

let test = Solution()
test.busyStudent([1,2,3], [3,2,7], 4)
test.busyStudent([4], [4], 4)
test.busyStudent([4], [4], 5)
test.busyStudent([1,1,1,1], [1,3,2,4], 7)
test.busyStudent([9,8,7,6,5,4,3,2,1], [10,10,10,10,10,10,10,10,10], 5)


//class Solution {
//    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
//        return startTime.enumerated().reduce(into: Int(0), { if queryTime >= $1.1 && queryTime <= endTime[$1.0] { $0 += 1 } })
//    }
//}
