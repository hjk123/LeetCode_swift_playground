//: [Previous](@previous)

import Foundation

//Given a non-negative integer n, count all numbers with unique digits, x, where 0 ≤ x < 10n.
//
//Example:
//Given n = 2, return 91. (The answer should be the total numbers in the range of 0 ≤ x < 100, excluding [11,22,33,44,55,66,77,88,99])
//
//Credits:
//Special thanks to @memoryless for adding this problem and creating all test cases.

class Solution {
    //Time Limit Exceeded
    func countNumbersWithUniqueDigits(_ n: Int) -> Int {
        var result = 0
        var max = 1
        for _ in 0..<n {
            max = max*10
        }
        for i in 0..<max {
            if !isValid(i) {
                result += 1
            }
        }
        return result
    }
    func isValid(_ num: Int) -> Bool {
        var set: Set = Set<Int>.init()
        if num <= 10 {
            return false
        }
        var temp = num
        var count = 0
        while temp != 0 {
            let lastDigit = temp%10
            set.insert(lastDigit)
            temp = temp/10
            count += 1
        }
        return set.count < count ? true : false
    }
    //beat 100%
    func countNumbersWithUniqueDigits2(_ n: Int) -> Int {
        if n == 0 {
            return 1
        }
        if n == 1 {
            return 10
        }
        var dp = Array.init(repeating: 0, count: n)
        dp[0] = 10
        for i in 1..<n {
            var num = 9
            for j in 0 ..< i {
                num = num*(9 - j)
            }
            dp[i] = dp[i-1] + num
        }
        return dp[n-1]
    }
}
let solution  = Solution.init()
let result = solution.countNumbersWithUniqueDigits2(3)
//        dp(1) = 10
//        dp(2) = 91 = 81(9X9) + 10
//        dp(3) = 739 = 91 + 648(9X9X8)
//        dp(4) = 739 + 5832(9x9x8x7)
