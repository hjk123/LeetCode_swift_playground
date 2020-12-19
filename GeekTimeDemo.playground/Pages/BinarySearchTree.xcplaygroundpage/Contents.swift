
//Definition for a binary tree node.
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

public class BinarySearchTree{
    var p: TreeNode?
    
    public init(_ tree: TreeNode?) {
        self.p = tree
    }
    
    //查找
    func find(data: Int) -> TreeNode? {
        var node = p
        while node != nil {
            if node!.val < data {
                node = node?.right
            }
            else if (node!.val > data)
            {
                node = node?.left
            }
            else
            {
                return node
            }
        }
        return nil
    }
    
    //插入
    func insert(data: Int) -> Void {
        if p == nil {
            p = TreeNode.init(data)
            return;
        }
        var node = p
        while node != nil {
            if data > node!.val {
                if node?.right == nil {
                    node?.right = TreeNode.init(data)
                    return
                }
                node = node?.right
            }
            else
            {
                if node?.left == nil {
                    node?.left = TreeNode.init(data)
                    return
                }
                node = node?.left
            }
        }
    }
    
    //删除
    func delete(data: Int) -> Void {
        var node = p //node 指向要删除的节点 初始化指向根节点
        var parentNode: TreeNode? = nil //记录父节点
        
        while node != nil && node!.val != data {
            parentNode = node
            if node!.val > data {
                node = node?.right
            } else {
                node = node?.left
            }
        }
        
        if node == nil {
            return;//没找到
        }
        
        //要删除的节点有两个子节点
        if node?.left != nil && node?.right != nil {
            //要找出右子树的最小节点 替换该节点
            var minNode: TreeNode? = node?.right
            var parentMinNode: TreeNode? = node
            while minNode?.left != nil {
                parentMinNode = minNode
                minNode = minNode?.left
            }
            node!.val = minNode!.val
            node = minNode
            parentNode = parentMinNode
        }
        
        
        //删除节点是叶子节点或者仅有一个子节点
        var child: TreeNode?
        if p?.left != nil {
            child = p?.left
        } else if p?.right != nil {
            child = p?.right
        } else {
            child = nil
        }
        
        if parentNode == nil {
            node = child
        } else if parentNode?.left === parentNode {
            parentNode?.left = child
        } else {
            parentNode?.right = child
        }
        
    }
    
    //前序遍历
    func prePrder(root: TreeNode?) -> Void {
        if root == nil {
            return
        }
        print(root!.val)
        prePrder(root: root?.left)
        prePrder(root: root?.right)
    }
    
    //中序遍历
    func inPrder(root: TreeNode?) -> Void {
        if root == nil {
            return
        }
        inPrder(root: root?.left)
        print(root!.val)
        inPrder(root: root?.right)
    }
    
    //后序遍历
    func postOrder(root: TreeNode?) -> Void {
        if root == nil {
            return
        }
        postOrder(root: root?.left)
        postOrder(root: root?.right)
        print(root!.val)
    }
    
    //按层遍历
    func traverseByLayer(root: TreeNode?) -> Void {
        if root == nil {
            return
        }
        var queue: [TreeNode] = [TreeNode].init()
        queue.append(root!)
        while queue.count != 0 {
            let element = queue.first
            print(element?.val)
            queue.removeFirst()
            if element?.left != nil {
                queue.append(element!.left!)
            }
            if element?.right != nil {
                queue.append(element!.right!)
            }
        }
    }
    
}
