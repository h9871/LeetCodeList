import UIKit

//461
class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        let x2 = String(x, radix: 2)
        let y2 = String(y, radix: 2)
        let or = String(Int(x2)! | Int(y2)!)
        let target = (or.count == x2.count) ? x2 : y2
        var count = 0
        for index in 0..<or.count where target[target.index(target.startIndex, offsetBy: index)] != or[or.index(or.startIndex, offsetBy: index)] {
            count += 1
        }
        return count
    }
}

let test = Solution()
test.hammingDistance(1, 4)
