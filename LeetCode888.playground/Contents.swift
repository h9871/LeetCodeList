import UIKit

/888
class Solution {
//    func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
//        var result:[Int] = []
//        let sum = (A.reduce(0) { $0 + $1 } + B.reduce(0) { $0 + $1 }) / 2
//        var a = A
//        var b = B
//        for index in 0..<a.count {
//            for target in 0..<b.count {
//                let temp = a[index]
//                a[index] = b[target]
//                b[target] = temp
//
//                if (a.reduce(0) { $0 + $1 } == b.reduce(0) { $0 + $1 }) {
//                    result.append(A[index])
//                    result.append(B[target])
//                    return result
//                }
//            }
//        }
//        return result
//    }

    func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: 2)
        let sumA = A.reduce(0) { $0 + $1 }
        let sumB = B.reduce(0) { $0 + $1 }
        let fair = (sumA + sumB) / 2

        for index in 0..<A.count {
            for target in 0..<B.count where (fair - sumA + A[index]) == B[target] {
                result[0] = A[index]
                result[1] = B[target]
                return result
            }
        }
        return result
    }
}

let test = Solution()
test.fairCandySwap([1,1], [2,2]) // 3
test.fairCandySwap([1,2], [2,3]) // 4
test.fairCandySwap([2], [1,3]) // 3
test.fairCandySwap([1,2,5], [2,4]) // 7


//class Solution {
//    func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
//        let sumA = A.reduce(0, +)
//        let sumB = B.reduce(0, +)
//        let setB = Set<Int>(B)
//        let target = (sumA + sumB) / 2
//        let delta = target - sumA
//        var rlt: [Int] = [0,0]
//        for candy in A {
//            let b = candy + delta
//            if setB.contains(b) {
//                rlt[0] = candy
//                rlt[1] = b
//                return rlt
//            }
//        }
//        return rlt
//    }
//}
