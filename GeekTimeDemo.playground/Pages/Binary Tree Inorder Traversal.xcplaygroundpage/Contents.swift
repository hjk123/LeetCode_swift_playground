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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard root != nil else {
            return [Int].init()
        }
        var result: [Int] = [Int].init()
        inordetraversalTree(root, array: &result)
        return result
    }
    func inordetraversalTree(_ root: TreeNode?, array:inout [Int]) {
        if root == nil {
            return
        }
        inordetraversalTree(root?.left, array: &array)
        array.append(root!.val)
        inordetraversalTree(root?.right, array: &array)
    }
}
