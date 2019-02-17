//: [Previous](@previous)

import Foundation


//Definition for singly-linked list.
//Sort a linked list in O(n log n) time using constant space complexity.
//根据题目意思 时间复杂度 为O(nlogn) 且为常数空间复杂度 只能用 快速排序
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
 
class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        return nil
    }
}
