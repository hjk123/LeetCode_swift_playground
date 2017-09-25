//: [Previous](@previous)

import Foundation

//Given a linked list, return the node where the cycle begins. If there is no cycle, return null.
//
//Note: Do not modify the linked list.
//
//Follow up:
//Can you solve it without using extra space?

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        //第一种解法:遍历链表，放入判断set中是否存在，如果存在就那就是环，如果不存在，就放入其中
        if head == nil {
            return nil
        }
        var set: Set<Int> = Set.init()
        var point = head
        while point != nil {
            if let value = point?.val {
                if set.contains(value) {
                    return point
                }
                else{
                    set.insert(value)
                }
            }
            point = point?.next
        }
        return nil
    }
    //第二种解法就是用快慢指针，如果有环的话，两个指针会相遇
    func detectCycle2(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        var walk_point = head
        var run_point = head
        while walk_point != nil {
            walk_point = walk_point?.next
            run_point = run_point?.next?.next
            if let walk = walk_point, let run = run_point {
//                if walk == run {
//                    return walk
//                }
            }
        }
        return nil
    }
}