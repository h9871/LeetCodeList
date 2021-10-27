import UIKit

// 412
class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        guard n > 0 else {
            return []
        }
        var result: [String] = []
        for element in 1...n {
            var data = String(element)
            if element % 3 == 0 {
                data = "Fizz"
            }
            if element % 5 == 0 {
                if data.contains("Fizz") { data += "Buzz" } else { data = "Buzz" }
            }
            result.append(data)
        }
        return result
    }
}

let test = Solution()
print(test.fizzBuzz(0))

//func fizzBuzz(_ n: Int) -> [String] {
// var output = [String]()
//    for i in 0..<n{
//        var index = i + 1
//        if index % 3 == 0{
//            if index % 5 == 0{
//                output.append("FizzBuzz")
//            }
//            else{
//                output.append("Fizz")
//            }
//        }
//        else if index % 5 == 0{
//            output.append("Buzz")
//        }
//        else{
//            output.append(String(index))
//        }
//    }
//    return output
//}
