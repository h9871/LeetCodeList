import UIKit

class Solution {
    func isPowerOfFour(_ num: Int) -> Bool {
        if num < 1 { return false }
        return num % 4 == 0
    }
}

let test = Solution()
test.isPowerOfFour(-2147483648)
test.isPowerOfFour(16)
