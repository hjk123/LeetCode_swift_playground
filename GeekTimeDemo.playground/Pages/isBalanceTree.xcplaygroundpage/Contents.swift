



public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    //给定一个二叉树，判断它是否是高度平衡的二叉树。
    //
    //本题中，一棵高度平衡二叉树定义为：
    //
    //一个二叉树每个节点 的左右两个子树的高度差的绝对值不超过 1 。
    func isBalanced(_ root: TreeNode?) -> Bool {
        return height(root) >= 0
    }
    
    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let lHeight = height(root?.left)
        if lHeight == -1 {
            return -1
        }
        let rHeight = height(root?.right)
        if rHeight == -1 {
            return -1
        }
        return abs(lHeight - rHeight) > 1 ? -1 : 1 + max(lHeight, rHeight)
    }
    
//    给定一棵二叉树，设计一个算法，创建含有某一深度上所有节点的链表（比如，若一棵树的深度为 D，则会创建出 D 个链表）。返回一个包含所有深度的链表的数组。
    // 广度优先遍历
    func listOfDepth(_ tree: TreeNode?) -> [[ListNode?]] {
        var result = [[ListNode?]]()
        return result
    }
    
    var result = [Int]()
    func preorder(_ root: TreeNode?) -> [Int] {
        
        return result
    }
    
    //输入一棵二叉树的根节点，求该树的深度。从根节点到叶节点依次经过的节点（含根、叶节点）形成树的一条路径，最长路径的长度为树的深度。
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let lHeight = maxDepth(root!.left)
        let rHeight = maxDepth(root!.right)
        
        return (lHeight > rHeight ? lHeight : rHeight) + 1
        
        
    }
    
    //给定一个二叉搜索树, 找到该树中两个指定节点的最近公共祖先
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        if root!.val < p!.val && root!.val < q!.val {
            return lowestCommonAncestor(root!.right, p, q)
        }
        if root!.val > p!.val && root!.val > q!.val {
            return lowestCommonAncestor(root!.left, p, q)
        } else {
            return root
        }
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if p == nil && q != nil {
            return false
        }
        if p != nil && q == nil {
            return false
        }
        if p!.val == q!.val {
            return true
        }
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}

