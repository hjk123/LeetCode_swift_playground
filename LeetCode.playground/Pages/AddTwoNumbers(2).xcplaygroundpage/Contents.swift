//: [Previous](@previous)

import Foundation

//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.
//
//Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
//Output: 7 -> 0 -> 8

//1. 把两个链表先转化成数字，相加得出结果后，在转化成链表

//Definition for singly-linked list.
class ListNode {
     public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
    }
 }
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let _ = l1 else {
            return nil
        }
        guard let _ = l2 else {
            return nil
        }
        var carry :Int = 0
        let result:ListNode = ListNode.init(0)
        var p1 :ListNode? = l1
        var p2 :ListNode? = l2
        var p3 :ListNode? = result
        while p1 != nil || p2 != nil  {
            if p1 != nil {
                carry += p1!.val
                p1 = p1?.next
            }
            if p2 != nil {
                carry += p2!.val
                p2 = p2?.next
            }
            p3?.next  = ListNode.init(carry%10)
            p3 = p3?.next
            carry = carry/10
        }
        if carry == 1 {
            p3!.next = ListNode.init(1)
        }
        return result.next
    }
}
