import UIKit

// 1046
class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var sorted = stones.sorted { $0 > $1 }
        while sorted.count > 1 {
            if sorted[0] == sorted[1] {
                sorted.removeSubrange(0...1)
            } else {
                sorted.append(abs(sorted[1] - sorted[0]))
                sorted.removeSubrange(0...1)
            }
            sorted = sorted.sorted { $0 > $1 }
            print(sorted)
        }
        return sorted.first ?? 0
    }
}

let test = Solution()
test.lastStoneWeight([2,7,4,1,8,1])

//class Solution {
//    func lastStoneWeight(_ stones: [Int]) -> Int {
//        var results = smash(stones)
//        return results.count == 0 ? 0 : results.first!
//    }
//    
//    func smash(_ stones: [Int]) -> [Int] {
//        if stones.count <= 1 { return stones }
//        
//        var myStones = stones
//        myStones.sort()
//        var s1 = myStones.removeLast() // heaviest rock
//        var s2 = myStones.removeLast() // second heaviest rock
//        
//        if s1 != s2 {
//            myStones.append(s1 - s2)
//        }
//        
//        return smash(myStones)
//    }
//}
