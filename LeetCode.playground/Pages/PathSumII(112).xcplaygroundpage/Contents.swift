//: [Previous](@previous)

import Foundation

//Given a binary tree and a sum, find all root-to-leaf paths where each path's sum equals the given sum.
//
//For example:
//Given the below binary tree and sum = 22,
//5
/// \
//4   8
///   / \
//11  13  4
///  \    / \
//7    2  5   1
//return
//    [
//        [5,4,11,2],
//        [5,8,4,5]
//]


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
//    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
//        var result = [[Int]]()
//        if root == nil {
//            return result
//        }
//        
//    }
//    func recursionPathSum(_ root: TreeNode?, _ sum: Int, _ currentSum: [Int], _ result: inout [[Int]]) {
//        if root == nil {
//            var tempSum = 0
//            for item in currentSum {
//                tempSum += item
//            }
//            if tempSum == sum {
//                result.append(currentSum)
//            }
//            return
//        }
//        var temp = currentSum
//        let value: Int? = root?.val
//        recursionPathSum(root?.left, sum, temp.append(value!), &result)
//        recursionPathSum(root?.right, sum, temp.append(value!), &result)
//    }
}
