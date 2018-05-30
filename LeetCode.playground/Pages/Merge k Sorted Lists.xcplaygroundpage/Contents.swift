//: [Previous](@previous)

import Foundation


 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
}
class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.count > 0 {
            return merge(lists, 0, lists.count - 1)
        }
        return nil
    }
    func merge(_ lists: [ListNode?],_ start: Int,_ end: Int) -> ListNode? {
        if start == end {
            return lists[start]
        }
        else
        {
            let mid = (start + end)/2
            let leftNode: ListNode? = merge(lists, start, mid)
            let rightNode: ListNode? = merge(lists, mid + 1, end)
            return mergeTwoLists(leftNode, rightNode)
        }
    }
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
