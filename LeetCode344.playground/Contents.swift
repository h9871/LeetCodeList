import UIKit

//344
class Solution {
    func reverseString(_ s: inout [Character]) {
//        s = s.reversed()
        var temp: Character
        for element in 0..<(s.count / 2) {
            temp = s[element]
            s[element] = s[s.count - 1 - element]
            s[s.count - 1 - element] = temp
        }
    }
}

let test = Solution()
var data: [Character] = ["h", "e", "l", "l", "o"]
test.reverseString(&data)
print(data)
var data2: [Character] = ["H","a","n","n","a","h"]
test.reverseString(&data2)
print(data2)


//class Solution {
//    func reverseString(_ s: inout [Character]) {
//        var len = s.count
//
//        for i in 0..<len/2 {
//            var temp = s[i]
//            s[i] = s[len-1-i]
//            s[len-1-i] = temp
//        }
//    }
//}
