//: [Previous](@previous)

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x != Int.min else {
            return false
        }
        var temp = abs(x)
        var reference = abs(x)
        var reverse = 0
        while temp > 0 {
            if reverse > Int.max / 10 {
                return false
            }
            reverse = reverse*10 + temp%10
            temp = temp/10
        }
        return (reverse == reference)
    }
}

let solution = Solution.init()
let result = solution.isPalindrome( -9222222222222222229)


