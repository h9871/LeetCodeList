import UIKit

class Solution {
    func defangIPaddr(_ address: String) -> String {
        var result = ""
        result = address.replacingOccurrences(of: ".", with: "[.]")
        print(result)
        return result
    }
}

let test = Solution()
test.defangIPaddr("1.1.1")
