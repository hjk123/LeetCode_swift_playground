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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let _ = root else {
            return [""]
        }
        var result: [String] = [String].init()
        helper(root, String(describing: root?.val), &result)
        return result
    }
    func helper(_ root: TreeNode?, _ currentStr: String, _ result: inout [String]) {
        if root?.left == nil && root?.right == nil {
            result.append(currentStr)
        }
        if root?.left != nil {
            helper(root?.left, currentStr + "->" + String(describing: root?.left?.val), &result)
        }
        if root?.right != nil {
            helper(root?.right, currentStr + "->" + String(describing: root?.right?.val), &result)
        }
    }
}
