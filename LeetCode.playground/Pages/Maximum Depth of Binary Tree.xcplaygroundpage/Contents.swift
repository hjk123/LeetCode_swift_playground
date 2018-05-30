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
//BFS
//divide conquer
class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
//        var result: Int = 0
//        if let rootNode = root {
//            var queue = Array<[TreeNode?]>.init()
//            var visited = Array<TreeNode?>.init()
//            queue.append([root])
//            visited.append(root)
//            while queue.count > 0 {
//                node = 
//            }
//
//        }
//        return result
        if let rootNode = root {
            let leftMaxDepth = maxDepth(rootNode.left)
            let rightMaxDepth = maxDepth(rootNode.right)
            let depth = leftMaxDepth > rightMaxDepth ? leftMaxDepth : rightMaxDepth
            return depth + 1;
        }
        return 0
    }
}
