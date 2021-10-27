import UIKit

class Solution {
    func minDeletionSize(_ A: [String]) -> Int {
        var count = 0
        let firstValue = A.first!
        for element in 0..<firstValue.count {
            let check = A.map { $0[$0.index($0.startIndex, offsetBy: element)] }
            print(check)
            for index in 0..<(check.count - 1) {
                if check[index] > check[index + 1] {
                    count += 1
                    break
                }
            }
        }
        return count
    }
}

let test = Solution()
test.minDeletionSize(["cbas","dafs","ghis"])
test.minDeletionSize(["a","b"])
test.minDeletionSize(["zyx","wvu","tsr"])
