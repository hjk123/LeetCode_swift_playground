//: [Previous](@previous)

import Foundation

//Given a singly linked list, determine if it is a palindrome.
//
//Follow up:
//Could you do it in O(n) time and O(1) space?


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int)
    {
         self.val = val
         self.next = nil
    }
}
//判断链表是否是回文,使用快慢指针，先找到中点 将前半段的节点存入栈中，继续遍历，逐个比较
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard head != nil && head?.next != nil else {
            return false
        }
        var fast :ListNode? = head
        var slow :ListNode? = head
        var stack :[Int] = [Int]()
        stack.append((head?.val)!)
        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if let value = slow?.val {
                stack.append(value)
            }
        }
        if fast?.next == nil {
            stack.popLast()
        }
        while slow?.next != nil {
            slow = slow?.next
            if let top = stack.popLast(),let value = slow?.val {
                if top != value {
                    return false
                }
                stack.removeLast()
            }
            
        }
        return true
    }
}

