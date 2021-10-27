import UIKit

class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var count = 0
        var start: [Int]? = nil
        for element in points {
            if start == nil {
                start = element
            } else {
                let maxValue = max((start![0] - element[0]).magnitude,
                                   (start![1] - element[1]).magnitude)
                start = element
                count += Int(maxValue)
            }
        }
        return count
    }
}

let test = Solution()
test.minTimeToVisitAllPoints([[3,2],[-2,2]])


//class Solution {
//    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
//        var seconds = 0
//        for i in 0..<points.count - 1 {
//            let x = points[i+1][0]-points[i][0]
//            let y = points[i+1][1]-points[i][1]
//            seconds += max(abs(x), abs(y))
//        }
//        return seconds
//    }
//}
