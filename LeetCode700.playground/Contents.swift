import UIKit

// 700
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

class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard (root != nil) else {
            return nil
        }

        if root?.val == val {
            return root
        }

        let left = self.searchBST(root?.left, val)
        if left?.val == val {
            return left
        }
        let right = self.searchBST(root?.right, val)
        if right?.val == val {
            return right
        }

        return nil
    }
}

let test = Solution()

let tree = TreeNode(4)
tree.left = TreeNode(2)
tree.right = TreeNode(7)
tree.left!.left = TreeNode(1)
tree.left!.right = TreeNode(3)
tree.right!.left = TreeNode(6)
tree.right!.right = TreeNode(5)
let t1 = tree.right!.left
t1!.left = TreeNode(10)
t1!.right = TreeNode(9)

test.searchBST(tree, 11)


//class Solution {
//    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
//        
//        guard let node = root else { return nil }
//        
//        if node.val == val { return root }
//        if node.val > val  { return searchBST(node.left, val) }
//        if node.val < val  { return searchBST(node.right, val) }
//        
//        return nil
//    }
//}
