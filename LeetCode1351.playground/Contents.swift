import UIKit

class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var count: Int = 0
        grid.forEach { (y) in
            y.forEach{ (x) in
                if x < 0 {
                    count += 1
                }
            }
        }
        return count
    }
}

let test = Solution()
test.countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]])
test.countNegatives([[3,2],[1,0]])
test.countNegatives([[1,-1],[-1,-1]])
test.countNegatives([[-1]])
