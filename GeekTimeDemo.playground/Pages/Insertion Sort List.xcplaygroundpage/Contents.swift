//: [Previous](@previous)

import Foundation
//插入排序 排序一个单链表 //passed
//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
 
class Solution {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        var result = head
        var temp: ListNode? = head?.next
        head?.next = nil
        var p_temp: ListNode? = nil
        while temp != nil {
            //讲temp节点插入已排序链表中
            var tempSortedHeader = result
            if tempSortedHeader!.val >= temp!.val {
                p_temp = temp?.next
                temp?.next = result
                result = temp
                temp = p_temp
            }
            else
            {
                var node: ListNode? = nil
                while tempSortedHeader != nil && tempSortedHeader!.val < temp!.val {
                    node = tempSortedHeader
                    tempSortedHeader = tempSortedHeader?.next
                }
                p_temp = temp?.next
                node?.next = temp
                temp?.next = tempSortedHeader
                temp = p_temp
            }
        }
        return result
    }
}
