//: [Previous](@previous)

import Foundation

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
    func isValidBST(_ root: TreeNode?) -> Bool {
        if let rootNode = root {
            if let leftNode = rootNode.left {
                if leftNode.val < rootNode.val {
                    return true
                }
                else
                {
                    return false
                }
            }
            if let rightNode = rootNode.right {
                if rightNode.val > rootNode.val {
                    return true
                }
                else
                {
                    return false
                }
            }
            return isValidBST(rootNode.left) && isValidBST(rootNode.right)
        }
        return true
    }
}
