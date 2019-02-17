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
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard root != nil else {
            return false
        }
        var nums = [Int].init()
        pathSum(root, 0, &nums)
        if nums.contains(sum) {
            return true
        }
        return false
    }
    func pathSum(_ root: TreeNode?, _ currentValue: Int, _ totals: inout [Int]) {
        if root == nil {
            totals.append(currentValue)
            return
        }
        else
        {
            if root!.left != nil {
                pathSum(root!.left, currentValue + root!.val, &totals)
            }
            if root!.right != nil {
                pathSum(root!.right, currentValue + root!.val, &totals)
            }
        }
    }
}
