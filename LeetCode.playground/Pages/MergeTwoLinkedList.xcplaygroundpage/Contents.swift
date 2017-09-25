//: [Previous](@previous)

import Foundation

//Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var point_l1 = l1
        var point_l2 = l2
        let dummy = ListNode.init(0)
        var tail:ListNode? = dummy
        while point_l1 != nil && point_l2 != nil {
            if point_l1!.val < point_l2!.val {
                tail?.next = point_l1
                point_l1 = point_l1?.next
            }
            else
            {
               tail?.next = point_l2
                point_l2 = point_l2?.next
            }
            tail = tail?.next
        }
        tail?.next = point_l1 == nil ? point_l2 : point_l1
        return dummy.next
    }
}
