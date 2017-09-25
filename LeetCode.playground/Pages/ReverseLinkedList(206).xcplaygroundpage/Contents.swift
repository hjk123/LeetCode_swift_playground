//: [Previous](@previous)

import Foundation

//Reverse a singly linked list.



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
 
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        var p_second: ListNode? = head
        var p_first: ListNode? = head?.next
        var p_temp: ListNode? = nil
        head?.next = nil
        while p_first != nil{
            p_temp = p_first?.next
            p_first?.next = p_second
            p_second = p_first
            p_first = p_temp
        }
        return p_second
    }
    //递归求解
}
