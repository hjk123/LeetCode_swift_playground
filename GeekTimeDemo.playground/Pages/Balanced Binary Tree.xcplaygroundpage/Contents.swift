//: [Previous](@previous)

import Foundation


//Definition for a binary tree node.
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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return false
        }
        let left = treeDepth(root?.left)
        let right = treeDepth(root?.right)
        if abs(left - right) > 1 {
            return false
        }
        return isBalanced(root?.left) && isBalanced(root?.right)
    }
    func treeDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let leftDepth = treeDepth(root?.left) + 1
        let rightDepth = treeDepth(root?.right) + 1
        return max(leftDepth, rightDepth)
        
    }
}
