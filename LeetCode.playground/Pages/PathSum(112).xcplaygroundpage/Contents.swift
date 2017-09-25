//: [Previous](@previous)

import Foundation
//
//Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.
//
//For example:
//Given the below binary tree and sum = 22,
//         5
//        / \
//       4   8
//      /   / \
//     11  13  4
//    /  \      \
//   7    2      1
//return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.

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
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        if root == nil {
            return false
        }
        var result = [Int]()
        recursiveTree(root, 0, &result)
        if result.contains(sum) {
            return true
        }
        return false
    }
    func recursiveTree(_ root: TreeNode?, _ sum: Int, _ result: inout [Int]){
        if root == nil {
            result.append(sum)
            return
        }
        recursiveTree(root?.left, sum + (root?.val)!, &result)
        recursiveTree(root?.right, sum + (root?.val)!, &result)
    }
}