import UIKit


public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}
 
class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var resultData: String = ""
        var roof = head
        while roof?.next != nil {
            resultData.append("\(roof!.val)")
            roof = roof?.next
        }
        resultData.append("\(roof!.val)")
        guard let returnValue = Int(resultData, radix: 2) else { return 0 }
        return returnValue
    }
}

let test = Solution()
let head = ListNode(1)
head.next = ListNode(0)
head.next?.next = ListNode(1)
test.getDecimalValue(head)


//func getDecimalValue(_ head: ListNode?) -> Int {
//    var ans = 0
//    var node: ListNode? = head
//    while node != nil {
//        ans = ans * 2 + node!.val
//        node = node?.next
//    }
//    return ans
//}

//class Solution {
//    func getDecimalValue(_ head: ListNode?) -> Int {
//        var result: Int = 0
//        var curNode: ListNode? = head
//        while curNode != nil {
//            result = (result << 1) | curNode!.val
//            curNode = curNode!.next
//        }
//        return result
//    }
//}
