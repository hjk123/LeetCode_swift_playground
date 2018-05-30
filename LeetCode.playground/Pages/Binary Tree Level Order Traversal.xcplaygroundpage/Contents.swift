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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = [[Int]].init()
        var visited: [Int] = [Int].init()
        var queue = Array<TreeNode?>.init();
        visited.append(root!.val)
        queue.append(root)
        while queue.count > 0 {
            let node = queue.dropFirst()
            //
            
        }
        return result
    }
}
