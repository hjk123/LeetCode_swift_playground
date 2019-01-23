//: [Previous](@previous)

import Foundation

//m
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
        var p_first: ListNode? = head
        var p_second: ListNode? = head?.next
        var p_temp: ListNode? = nil
        while head?.next != nil {
            p_temp = p_second?.next
            p_second?.next = p_first
            p_first = p_second
            p_second = p_temp
        }
        return p_first
    }
}
