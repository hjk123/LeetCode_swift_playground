



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
    
//    var result = [Int]()
//    func preorder(_ root: TreeNode?) -> [Int] {
//
//        return result
//    }
    
//    从上到下按层打印二叉树，同一层的节点按从左到右的顺序打印，每一层打印到一行。
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        if root == nil {
            return result
        }
        var queue = [TreeNode]()
        queue.append(root!)
        while queue.count > 0 {
            var temp = [Int]()
            for _ in 0 ..< queue.count {
                let node: TreeNode = queue.removeFirst()
                temp.append(node.val)
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
            result.append(temp)
        }
        return result
    }
//    给定一个二叉树和一个目标和，判断该树中是否存在根节点到叶子节点的路径，这条路径上所有节点值相加等于目标和。
//
//    说明: 叶子节点是指没有子节点的节点。
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        if root == nil {
            return false
        }
        if root!.left == nil && root!.right == nil {
            return sum - root!.val == 0
        }
        let left = hasPathSum(root, sum - root!.val)
        let right = hasPathSum(root, sum - root!.val)
        return left || right
    }
    
//    给定一棵二叉树，其中每个节点都含有一个整数数值(该值或正或负)。设计一个算法，打印节点数值总和等于某个给定值的所有路径的数量。注意，路径不一定非得从二叉树的根节点或叶节点开始或结束，但是其方向必须向下(只能从父节点指向子节点方向)。
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil {
            return 0
        }
        return helper(root, sum) + pathSum(root!.left, sum) + pathSum(root!.right, sum)
    }
    func helper(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil {
            return 0
        }
        var count = 0
        if sum == root!.val {
            count += 1
        }
        count += helper(root!.left, sum - root!.val)
        count += helper(root!.right, sum - root!.val)
        return count
    }
    
//    请实现一个函数，用来判断一棵二叉树是不是对称的。如果一棵二叉树和它的镜像一样，那么它是对称的。
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return helper1(root!.left, root!.right)
    }
    func helper1(_ left: TreeNode?,_ right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
        }
        if left == nil || right == nil {
            return false
        }
        return left!.val == right!.val && helper1(left!.right, right?.left) && helper1(left?.left, right!.right)
    }
    
//    给定两个二叉树，想象当你将它们中的一个覆盖到另一个上时，两个二叉树的一些节点便会重叠。

//    你需要将他们合并为一个新的二叉树。合并的规则是如果两个节点重叠，那么将他们的值相加作为节点合并后的新值，否则不为 NULL 的节点将直接作为新二叉树的节点。
//    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
//
//    }
    
    //翻转一棵二叉树
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        let rightNode = root!.right
        let lNode = invertTree(root!.left)
        root!.right = lNode
        let rNode = invertTree(rightNode)
        root!.left = rNode
        return root
    }
    
    //计算给定二叉树的所有左叶子之和。
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var res = 0
        if root!.left != nil && root!.left!.left == nil && root!.left!.right == nil {
            res = root!.left!.val
        }
        return sumOfLeftLeaves(root!.left) + sumOfLeftLeaves(root!.right) + res
    }
    //单值二叉树
    func isUnivalTree(_ root: TreeNode?) -> Bool {
          if root == nil {
              return true
          }
          if root!.left != nil && root!.left!.val != root!.val {
              return false
          }
          if root!.right != nil && root!.right!.val != root!.val{
              return false
          }
          return isUnivalTree(root!.left) && isUnivalTree(root!.right)
    }
}

