//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
}
//链表
class List{
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var pre: ListNode? = nil
        var cur: ListNode? = head
        var next: ListNode? = nil
        
        while cur != nil {
            next = cur!.next
            cur!.next = pre
            pre = cur
            cur = next
        }
        return pre
    }
    
    //递归 分支思想结题
    func reverseList2(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var node: ListNode? = reverseList2(head!.next)
        
        head?.next?.next = head
        head?.next = nil
        
        return node
        
    }
    
    //链表元素 两两反转 (没做出来 看答案 画图思考)
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var cur = head
        var pre = nil
        
        while cur != nil {
            pre = cur?.next
            cur?.next = cur?.next?.next
            pre?.next = cur
            cur = cur?.next
        }
        return head
    }
    
    func hasCircle(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return false
        }
        var slow = head
        var fast = head
        
        while slow?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow == fast {
                return true
                break
            }
        }
        
        return false
        
        
    }
    
}
