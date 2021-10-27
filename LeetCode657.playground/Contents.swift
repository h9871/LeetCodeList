import UIKit

class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var x = 0
        var y = 0

        moves.forEach { (c) in
            switch c {
            case "U": y -= 1
            case "D": y += 1
            case "L": x -= 1
            case "R": x += 1
            default: break
            }
        }
        return (x >= 0 && y >= 0)
    }
}


let test = Solution()
test.judgeCircle("UDDDDU")
​

//class Solution {
//    func judgeCircle(_ moves: String) -> Bool {
//        var x = 0
//        var y = 0
//        
//        moves.forEach { c in
//            
//            switch c {
//            case "R": x += 1
//            case "L": x -= 1
//            case "U": y += 1
//            case "D": y -= 1
//            default: x += 0; y += 0
//            }
//        }
//        
//        return x == 0 && y == 0
//    }
//}
