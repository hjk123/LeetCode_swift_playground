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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if let rootNode = root {
            let leftNode: TreeNode? = invertTree(rootNode.left)
            let rightNode: TreeNode? = invertTree(rootNode.right)
            rootNode.left = rightNode
            rootNode.right = leftNode
            return rootNode
        }
        return nil
    }
}
