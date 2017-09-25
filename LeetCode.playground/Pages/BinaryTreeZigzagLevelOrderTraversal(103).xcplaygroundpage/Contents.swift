//: [Previous](@previous)

import Foundation

//Given a binary tree, return the zigzag level order traversal of its nodes' values. (ie, from left to right, then right to left for the next level and alternate between).
//
//For example:
//Given binary tree [3,9,20,null,null,15,7],
//   3
//  / \
// 9  20
// /  \
//15   7
//return its zigzag level order traversal as:
//[
//    [3],
//    [20,9],
//    [15,7]
//]


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
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard let _ = root else {
            return result
        }
        var levelDirection = true
        var queue = Array<TreeNode>.init()
        queue.append(root!)
        while queue.count > 0 {
            var levelSize = queue.count
            var levelNodes = [Int]()
            while levelSize > 0 {
                levelSize -= 1
                let currentNode = queue[0]
                queue.remove(at: 0)
                if currentNode.left != nil {
                    queue.append(currentNode.left!)
                }
                if currentNode.right != nil {
                    queue.append(currentNode.right!)
                }
                levelNodes.append(currentNode.val)
            }
            if !levelDirection {
                levelNodes.reverse()
            }
            result.append(levelNodes)
            levelDirection = !levelDirection
        }
        return result
    }
}
