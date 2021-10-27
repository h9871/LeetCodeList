import UIKit

class Solution {
    func maximum69Number (_ num: Int) -> Int {
        let stringData = String(num)
        var resultList: [String] = [stringData]
        for (index, target) in stringData.enumerated() {
            var makeString = stringData
            makeString.remove(at: makeString.index(makeString.startIndex, offsetBy: index))
            makeString.insert((target == "6") ? "9" : "6", at: makeString.index(makeString.startIndex, offsetBy: index))
            resultList.append(makeString)
        }
        return Int((resultList.sorted().last ?? "0")) ?? 0
    }
}

let test = Solution()
test.maximum69Number(9669)


func maximum69Number (_ num: Int) -> Int {
      var s = Array(String(num))
      if let idx = s.firstIndex(of: "6") {
          s[idx] = "9"
      }
      return Int(String(s)) ?? num
  }
