import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
 }
//
class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        guard t1 != nil || t2 != nil else {
            return nil
        }
        guard t1 != nil else {
            return t2
        }
        guard t2 != nil else {
            return t1
        }

        t1?.val = ((t1?.val ?? 0) + (t2?.val ?? 0))
        t1?.left = mergeTrees(t1?.left, t2?.left)
        t1?.right = mergeTrees(t1?.right, t2?.right)

        return t1
    }
}

let test = Solution()

let tree1 = TreeNode(1)
tree1.left = TreeNode(3)
tree1.right = TreeNode(2)
tree1.left!.left = TreeNode(5)

let tree2 = TreeNode(2)
tree2.left = TreeNode(1)
tree2.right = TreeNode(3)
tree2.left!.right = TreeNode(4)
tree2.right!.right = TreeNode(7)

let tt = tree1
let tt2 = tree2
let result = test.mergeTrees(tree1, tree2)
print(result?.val)
print(result?.left?.val)
print(result?.right?.val)
print(result?.left?.left?.val)
print(result?.left?.right?.val)
print(result?.right?.left?.val)
print(result?.right?.right?.val)


//func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
//    if t1 == nil, t2 == nil { return nil }
//    let root = TreeNode((t1?.val ?? 0) + (t2?.val ?? 0))
//    root.left = mergeTrees(t1?.left, t2?.left)
//    root.right = mergeTrees(t1?.right, t2?.right)
//    return root
//}
