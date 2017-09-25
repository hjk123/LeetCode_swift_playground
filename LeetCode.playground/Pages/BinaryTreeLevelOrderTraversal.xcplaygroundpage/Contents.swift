//: [Previous](@previous)

//import Foundation
//
//Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).
//
//For example:
//Given binary tree [3,9,20,null,null,15,7],
//     3
//    / \
//   9   20
//      /  \
//     15   7
// return its level order traversal as:
//  [
//      [3],
//      [9,20],
//      [15,7]
//  ]


//  Definition for a binary tree node.
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
    //BFS
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = [[Int]]()
        if root == nil {
            return [[Int]]()
        }
        var queue: Array<TreeNode> = Array.init()
        queue.append(root!)
        while queue.count != 0 {
            var levelSize: Int = queue.count
            var levelNodes = [Int]()
            while levelSize > 0 {
                levelSize -= 1
                let currentNode = queue[0]
                levelNodes.append(currentNode.val)
                if currentNode.left != nil {
                    queue.append(currentNode.left!)
                }
                if currentNode.right != nil {
                    queue.append(currentNode.right!)
                }
                queue.remove(at: 0)
            }
            result.append(levelNodes)
        }
        return result
    }
    //写第二遍，面试的时候居然没写出来
    func levelOrderSecond(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = [[Int]]()
        if root == nil {
            return [[Int]]()
        }
        var queue: Array<TreeNode> = Array.init()
        queue.append(root!)
        while queue.count != 0 {
            var levelSize: Int = queue.count
            var levelNodes = [Int]()
            while levelSize > 0 {
                levelSize -= 1
                let currentNode = queue[0]
                levelNodes.append(currentNode.val)
                if currentNode.left != nil {
                    queue.append(currentNode.left!)
                }
                if currentNode.right != nil {
                    queue.append(currentNode.right!)
                }
                queue.remove(at: 0)
            }
            result.append(levelNodes)
        }
        return result
    }
}
