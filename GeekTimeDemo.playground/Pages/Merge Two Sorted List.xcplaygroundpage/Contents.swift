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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil else {
            return nil
        }
        guard l2 != nil else {
            return nil
        }
        var result: ListNode? = ListNode.init(0)
        let header = result
        var temp1 = l1
        var temp2 = l2
        while temp1 != nil && temp2 != nil {
            if temp1!.val > temp2!.val {
                result?.next = temp2
                temp2 = temp2?.next
            }
            else
            {
                result?.next = temp1
                temp1 = temp1?.next
            }
            result = result?.next
        }
        result?.next = temp1 == nil ? temp2 : temp1
        return header?.next
    }
}
