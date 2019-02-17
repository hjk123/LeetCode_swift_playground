//: [Previous](@previous)
//方法1：遍历链表 存储节点 如果已经存储过了 就说明有环 如果遍历到末尾都没有存储过 那就证明没有环  方法2: 快慢步 一个节点 走一步 另一个节点走两步 如果相遇 则说明有环 如果没相遇 则说明没环
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
//    func reverseList(_ head: ListNode?) -> Bool {
//        guard head != nil else {
//            return false
//        }
////        var p_first: ListNode? = head
////        var p_second: ListNode? = head?.next
////        var p_temp: ListNode? = nil
////        head?.next = nil
////        while p_second != nil {
////            p_temp = p_second?.next
////            p_second?.next = p_first
////            p_first = p_second
////            p_second = p_temp
////        }
////        return p_first
//    }
}

