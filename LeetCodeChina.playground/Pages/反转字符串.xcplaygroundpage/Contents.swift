//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


class Solution {
    func reverseString(_ s: String) -> String {
        guard s.count > 0 else {
            return s
        }
        return String.init(s.reversed())
    }
}
