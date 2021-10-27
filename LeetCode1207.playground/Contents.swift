import UIKit

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        // inner func
        
        // 기존의 함수의 기준치를 체크하기 위하여 중복을 제거
        func makeSet() -> [Int] {
            var resultArray: [Int] = []
            var setArray: Set<Int> = []
            for element in arr {
                // 중복을 허용하지 않는 Set
                setArray.insert(element)
            }
            
            for element in setArray {
                resultArray.append(element)
            }
            
            return resultArray
        }
        
        // 해당 기준치들의 갯수를 확인
        func makeFilter(_ setArray: [Int], _ arr: [Int]) -> [Int] {
            var lastCheckArray: [Int] = []
            for element in setArray {
                let count = arr.filter { $0 == element }.count
                lastCheckArray.append(count)
            }
            return lastCheckArray
        }
        
        // 같은 수가 존재한다면 return false 없다면 return true
        func resultMake(_ lastCheckArray: [Int]) -> Bool {
            for element in lastCheckArray {
                let check = lastCheckArray.filter { $0 == element }.count
                if check > 1 {
                    return false
                }
            }
            return true
        }
        // inner func end
        
        return resultMake(makeFilter(makeSet(), arr))
    }
}

let test = Solution()
let arr: [Int] = [1,2,2,3,3,3,4,4,4,4]
print(test.uniqueOccurrences(arr))


// 다른 답변


class Solution {
func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var numDict: [Int: Int] = [:]
        for num in arr {
            if let val = numDict[num] {
                numDict[num] = val + 1
            } else {
                numDict[num] = 1
            }
        }
        
        let values = Array(numDict.values)
        return values.count == Set(values).count
    }
}

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        let countMap = arr.reduce(into: [Int:Int](), { (acc, curr) in
            acc[curr, default: 0] += 1
        })
        return Set(Array(countMap.values)).count == countMap.keys.count
    }
}
