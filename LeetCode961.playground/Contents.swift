import UIKit

class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        for element in A where (A.filter { $0 == element }.count > 1) {
            return element
        }
        return 0
    }
}

let test = Solution()
test.repeatedNTimes([2,1,2,5,3,2])


//func repeatedNTimes(_ A: [Int]) -> Int {
//    
//    let mappedItems = A.map { ($0, 1) }
//    let counts = Dictionary(mappedItems, uniquingKeysWith: +)  // key - number, value - count
//    
//    if let index = counts.values.firstIndex(of: A.count / 2) {
//        return counts.keys[index]
//    }
//    
//    return 0
//}
