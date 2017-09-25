//: [Previous](@previous)

import Foundation

//二叉搜索树的最近公共祖先
//Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.
//
//According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes v and w as the lowest node in T that has both v and w as descendants (where we allow a node to be a descendant of itself).”
//
//       _______6______
//      /              \
//   ___2__          ___8__
//  /      \        /      \
//  0      _4       7       9
// /  \
// 3   5
//For example, the lowest common ancestor (LCA) of nodes 2 and 8 is 6. Another example is LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.

public class TreeNode {
    public var val :Int
    public var right :TreeNode?
    public var left :TreeNode?
    public init(_ val: Int)
    {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
class Solution{
    //二叉搜索树
    func LCAOfBinarySearchTree(_ root :TreeNode?,_ one :TreeNode,_ two :TreeNode) -> TreeNode? {
        if root == nil {
            return nil
        }
        if let leftNode = root?.left,leftNode.val < one.val && leftNode.val < two.val {
            return LCAOfBinarySearchTree(leftNode, one, two)
        }
        if let rightNode = root?.right, one.val > rightNode.val && two.val > rightNode.val{
            return LCAOfBinarySearchTree(rightNode, one, two)
        }
        return root
    }
    //二叉树
    func LCAOfBinaryTree(_ root :TreeNode,_ one :TreeNode,_ two :TreeNode) -> TreeNode? {
        return nil
    }
}