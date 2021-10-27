import UIKit

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        func countOfDigit(_ number: Int) -> Int {
            var num = number
            var count: Int = 0
            while num > 0 {
                num /= 10
                count += 1
            }
            return count
        }
        
        var count = 0
        for element in nums {
            if countOfDigit(element) % 2 == 0 {
                count += 1
            }
        }
        return count
    }
}

let test = Solution()
test.findNumbers([555,901,482,1771])


//class Solution {
//    func findNumbers(_ nums: [Int]) -> Int {
//        var evenNumber = 0;
//        for num in nums {
//            var count = (Array(String(num)).count % 2) == 0 ? 1 : 0;
//            evenNumber += count;
//        }
//        return evenNumber;
//    }
//}

//public func findNumbers(_ nums: [Int]) -> Int {
//    var count = 0
//    for i in nums {
//        count += String(i).count % 2 == 0 ? 1 : 0
//    }
//    return count
//}
