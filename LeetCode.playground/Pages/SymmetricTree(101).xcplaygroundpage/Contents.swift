//: [Previous](@previous)

import Foundation

//Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
//
//For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
//
//    1
//   / \
//  2   2
// / \ / \
//3  4 4  3
//But the following [1,2,2,null,3,null,3] is not:
//   1
//  / \
// 2   2
//  \   \
//   3   3
//Note:
//Bonus points if you could solve it both recursively and iteratively.

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        //BFS
        if root == nil {
            return false
        }
        var queue = Array<TreeNode>.init()
        queue.append(root!)
        while queue.count > 0 {
            var levelSize = queue.count
            if !isValid(queue) {
                return false
            }
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
            }
        }
        return true
    }
    func isValid(_ array: Array<TreeNode>) -> Bool {
        let count = array.count
        if count == 1 {
            return true
        }
        if count%2 != 0 {
            return false
        }
        for index in 0..<count/2 {
            let nodeOne: TreeNode = array[index]
            let nodeTwo: TreeNode = array[count - index]
            if nodeOne.val != nodeTwo.val {
                return false
            }
        }
        return true
    }
}
