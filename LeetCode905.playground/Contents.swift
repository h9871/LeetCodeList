import UIKit

class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var newArray: [Int] = []
        for element in A {
            switch element % 2  {
            case 0: // 짝수
                newArray.insert(element, at: 0)
            default: // 홀수
               newArray.append(element)
            }
        }
        return newArray
    }
}

let test = Solution()
print(test.sortArrayByParity([3,1,2,4,0,5,6]))


class Solution {
   func sortArrayByParity(_ A: [Int]) -> [Int] {
        return
            A.filter({ $0 % 2 == 0 }) +
            A.filter({ $0 % 2 == 1 })
    }
}

class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var evens = [Int]()
        var odds = [Int]()
        
        for num in A {
            num % 2 == 0 ? evens.append(num) : odds.append(num)
        }
        
        return evens + odds
    }
}
