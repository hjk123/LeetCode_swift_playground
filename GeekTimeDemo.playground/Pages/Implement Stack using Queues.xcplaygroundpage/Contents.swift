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

class MyStack {
    var header: ListNode? = nil
    var tail: ListNode? = nil
    /** Initialize your data structure here. */
    init() {
        let tailNode = ListNode.init(0)
        header = tailNode
        tail = tailNode
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        let node: ListNode? = ListNode.init(x)
        node?.next = header
        header = node
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        if header === tail {
            return 0
        }
        let removeNode = header
        header = header?.next
        return removeNode!.val
    }
    
    /** Get the top element. */
    func top() -> Int {
        if header === tail {
            return 0
        }
        return header!.val
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        return header === tail
    }
}

//Your MyStack object will be instantiated and called as such:
let obj = MyStack.init()
obj.push(2)
obj.push(3)
obj.push(4)
obj.push(5)
obj.push(6)
let ret_2: Int = obj.pop()
let ret_3: Int = obj.pop()
let ret_4: Int = obj.pop()
let ret_5: Int = obj.top()
let ret_6: Bool = obj.empty()
 
