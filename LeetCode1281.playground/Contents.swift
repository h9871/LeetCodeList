import UIKit

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        // inner func
        func makeArray(_ n: Int) -> [Int] {
            let convertString = String(n)
            var resultArray: [Int] = []
            for element in convertString {
                if let convertData = Int(String(element)) {
                    resultArray.append(convertData)
                }
            }
            return resultArray
        }
        
        func makeAProduct(_ n: [Int]) -> Int {
            var result = 1
            for element in n {
                result = result * element
            }
            return result
        }
        
        func makeADigit(_ n: [Int]) -> Int {
            var result = 0
            for element in n {
                result = result + element
            }
            return result
        }
        // inner func end
        
        // int array
        var arrayInt: [Int] = []
        arrayInt = makeArray(n)
        return makeAProduct(arrayInt) - makeADigit(arrayInt)
    }
}

let test = Solution()
print(test.subtractProductAndSum(705))
