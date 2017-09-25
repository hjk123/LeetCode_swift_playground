//: [Previous](@previous)

import Foundation

//You need to find the largest value in each row of a binary tree.
//
//Example:
//Input:
//
//      1
//     / \
//    3   2
//   / \   \
//  5   3   9
//
//Output: [1, 3, 9]

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
    func largestValues(_ root: TreeNode?) -> [Int] {
        var result = [Int]()
        guard let _ = root else {
            return result
        }
        var queue = Array<TreeNode>.init()
        queue.append(root!)
        while queue.count > 0 {
            var levelSize = queue.count
            var maxNode = Int.min
            while levelSize > 0 {
                levelSize -= 1
                let currentNode = queue[0]
                queue.remove(at: 0)
                if currentNode.val > maxNode {
                    maxNode = currentNode.val
                }
                if currentNode.left != nil {
                    queue.append(currentNode.left!)
                }
                if currentNode.right != nil {
                    queue.append(currentNode.right!)
                }
            }
            result.append(maxNode)
        }
        return result
    }
}