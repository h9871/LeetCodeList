import UIKit

//206
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var root = head
        var reverse: ListNode? = nil
        var next: ListNode? = nil

        while root != nil {
            next = root?.next
            // swap
            root?.next = reverse
            reverse = root
            root = next
        }
        return reverse
    }
}

let test = Solution()
let list = ListNode(1)
list.next = ListNode(2)
list.next!.next = ListNode(3)
test.reverseList(list)


//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        var currentNode = head
//        var prevNode: ListNode?
//        var nextNode: ListNode?
//        
//        while currentNode != nil {
//            nextNode = currentNode?.next
//            currentNode?.next = prevNode
//            prevNode = currentNode
//            currentNode = nextNode
//        }
//        
//        return prevNode
//    }
//}
