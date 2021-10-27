import UIKit

//867
class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        var result:[[Int]] = []
        for index in 0..<A.first!.count {
            var makeArray:[Int] = []
            for target in A {
                makeArray.append(target[index])
            }
            result.append(makeArray)
        }
        return result
    }
}

let test = Solution()
test.transpose([[1,2,3],[4,5,6],[7,8,9]])
test.transpose([[1,2,3],[4,5,6]])
