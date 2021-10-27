import UIKit

class Solution {
    func numberOfSteps (_ num: Int) -> Int {
        var number = num
        var step: Int = 0
        while number > 0 {
            number = number % 2 == 0 ? number / 2 : number - 1
            step += 1
        }
        return step
    }
}

let test = Solution()
print(test.numberOfSteps(123))


//class Solution {
//    func numberOfSteps (_ num: Int) -> Int {
//        var steps = 0
//        var currentNum = num
//        while currentNum != 0 {
//            steps += 1
//            if currentNum % 2 == 0 {
//                currentNum = currentNum / 2
//            } else {
//                currentNum -= 1
//            }
//        }
//        return steps
//    }
//}
