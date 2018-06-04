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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard root != nil else {
            return [Int].init()
        }
        var queue: [TreeNode] = [TreeNode].init()
        var result: [Int] = [Int].init()
        queue.append(root!)
        while queue.count > 0 {
            var currentLevelSize = queue.count
            var levelNodes = [Int].init()
            while currentLevelSize > 0 {
                currentLevelSize -= 1
                let node = queue.first!
                queue.remove(at: 0)
                levelNodes.append(node.val)
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
            result.append(levelNodes.last!)
        }
        return result
    }
}
