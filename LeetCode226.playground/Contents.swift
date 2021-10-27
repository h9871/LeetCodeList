import UIKit

//226
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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard root != nil else {
            return nil
        }
        let temp = root?.left
        root?.left = root?.right
        root?.right = temp
        invertTree(root?.left)
        invertTree(root?.right)
        return root
    }
}

let test = Solution()
let tree = TreeNode(4)
tree.left = TreeNode(2)
tree.right = TreeNode(7)
tree.left!.left = TreeNode(1)
tree.left!.right = TreeNode(3)
//tree.right!.left = TreeNode(6)
tree.right!.right = TreeNode(9)
let result = test.invertTree(tree)
print(result?.val)
print(result?.left?.val)
print(result?.right?.val)
print(result?.left!.left?.val)
print(result?.left!.right?.val)
print(result?.right!.left?.val)
print(result?.right!.right?.val)


//func invertTree(_ root: TreeNode?) -> TreeNode? {
//    if root == nil { return root }
//    let left = invertTree(root?.left)
//    let right = invertTree(root?.right)
//    root?.left = right
//    root?.right = left
//    return root
//}
