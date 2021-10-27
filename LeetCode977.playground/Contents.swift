import UIKit

class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        return A.map { $0 * $0 }.sorted { $0 < $1 }
    }
}

let test = Solution()
test.sortedSquares([-7,-3,2,3,11])
