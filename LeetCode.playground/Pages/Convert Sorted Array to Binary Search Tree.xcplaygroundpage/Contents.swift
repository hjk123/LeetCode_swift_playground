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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard nums.count > 0 else {
            return nil
        }
        let header: TreeNode? = helper(nums, 0, nums.count - 1)
        return header;
    }
    func helper(_ nums: [Int],_ start: Int, _ end: Int) -> TreeNode? {
        if start > end {
            return nil
        }
        else
        {
            let mid: Int = (start + end)/2
            let header: TreeNode? = TreeNode.init(nums[mid])
            header?.left = helper(nums, start, mid)
            header?.right = helper(nums, mid+1, end)
            return header
        }
    }
}
