import UIKit
/**
 * Definition for singly-linked list.
*/
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var mutableHead = head
        guard mutableHead != nil else {
            return nil;
        }
        while mutableHead?.next != nil {
            mutableHead = mutableHead?.next
        }
        return mutableHead;
    }
}
