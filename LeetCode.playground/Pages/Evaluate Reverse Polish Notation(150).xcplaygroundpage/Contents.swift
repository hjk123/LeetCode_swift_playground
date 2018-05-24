//: [Previous](@previous)

import Foundation

//Evaluate the value of an arithmetic expression in Reverse Polish Notation.
//Valid operators are +, -, *, /. Each operand may be an integer or another expression.
//Note:
//Division between two integers should truncate toward zero.
//The given RPN expression is always valid. That means the expression would always evaluate to a result and there won't be any divide by zero operation.
//Example 1:
//
//Input: ["2", "1", "+", "3", "*"]
//Output: 9
//Explanation: ((2 + 1) * 3) = 9
//Example 2:
//
//Input: ["4", "13", "5", "/", "+"]
//Output: 6
//Explanation: (4 + (13 / 5)) = 6
//Example 3:
//
//Input: ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]
//Output: 22
//Explanation:
//((10 * (6 / ((9 + 3) * -11))) + 17) + 5
//= ((10 * (6 / (12 * -11))) + 17) + 5
//= ((10 * (6 / -132)) + 17) + 5
//= ((10 * 0) + 17) + 5
//= (0 + 17) + 5
//= 17 + 5
//= 22

class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        guard tokens.count > 0 else {
            return 0
        }
        let operators = ["+","-","*","/"]
        let stack = Stack.init()
        for i in 0 ..< tokens.count {
            if operators.contains(tokens[i]) {
                if tokens[i].elementsEqual("+") {
                    let element1 = stack.popStack()
                    let element2 = stack.popStack()
                    let result = Int(element1)! + Int(element2)!
                    stack.pushStack(element: String(result))
                }
                if tokens[i].elementsEqual("-") {
                    let element1 = stack.popStack()
                    let element2 = stack.popStack()
                    let result = Int(element2)! - Int(element1)!
                    stack.pushStack(element: String(result))
                }
                if tokens[i].elementsEqual("*") {
                    let element1 = stack.popStack()
                    let element2 = stack.popStack()
                    let result = Int(element1)! * Int(element2)!
                    stack.pushStack(element: String(result))
                }
                if tokens[i].elementsEqual("/") {
                    let element1 = stack.popStack()
                    let element2 = stack.popStack()
                    let result = Int(element2)! / Int(element1)!
                    stack.pushStack(element: String(result))
                }
            }
            else
            {
                stack.pushStack(element: tokens[i])
            }
        }
        return Int(stack.popStack())!
    }
}

class Stack {
    
    var array = Array<String>.init()

    func popStack() -> String {
        let result = array.removeLast()
        return result
    }
    func pushStack(element: String) -> Void {
        array.append(element)
    }
    
    func isEmpty() -> Bool {
        return array.count == 0
    }
}

