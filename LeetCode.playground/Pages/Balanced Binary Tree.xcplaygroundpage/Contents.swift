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
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let _ = root else {
            return false
        }
        return true
    }
}
