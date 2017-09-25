//: [Previous](@previous)

import Foundation

//Given a binary tree, find its minimum depth.
//
//The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.


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
    func minDepthBFS(_ root: TreeNode?) -> Int {
        //BFS
        var level = 1
        if root == nil {
            return 0
        }
        var queue: Array<TreeNode> = Array.init()
        queue.append(root!)
        while queue.count > 0 {
            var levelSize = queue.count
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
                if currentNode.left == nil && currentNode.right == nil {
                    return level
                }
                if levelSize == 0 {
                    level += 1
                }
            }
        }
        return level
    }
    func minDepthDFS(_ root: TreeNode?) -> Int {
        //DFS
        if root = nil{
            return 0
        }
        var min = Int.max
        var result = [Int]()
        minDepthResursion(root, 1, &result)
        if result.count == 0 {
            return 1
        }
        for i in result {
            if i < min {
                min = i
            }
        }
        return min
    }
    func minDepthResursion(_ root: TreeNode?,_ depth: Int,_ result: inout [Int]) {
        if root == nil {
            result.append(depth)
            return
        }
        if root?.left != nil {
            minDepthResursion(root?.left, depth + 1, &result)
        }
        if root?.right != nil {
            minDepthResursion(root?.right, depth + 1, &result)
        }
    }
}
