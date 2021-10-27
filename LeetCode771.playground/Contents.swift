import UIKit

class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        J.forEach { (j) in
            S.forEach { (s) in
                if j == s {
                    count += 1
                }
            }
        }
        return count
    }
}

let test = Solution()
test.numJewelsInStones("aA", "aAAbbbb")


//func numJewelsInStones(_ J: String, _ S: String) -> Int {
//    var jewels = 0
//    for s in S where J.contains(s) {
//        jewels += 1
//    }
//    return jewels
//}
