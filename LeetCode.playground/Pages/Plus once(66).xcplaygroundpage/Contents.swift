//: [Previous](@previous)

import Foundation

//Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
//
//You may assume the integer do not contain any leading zero, except the number 0 itself.
//
//The digits are stored such that the most significant digit is at the head of the list.

//第一种想法是可以把数组转化成数字在加1 然后在转成数组 感觉这种解法太复杂
//这种解法就是 把9999这种需要进位这种情况单独拿出来讨论
//accepted
class Solution{

    func plusOne(_ digit: [Int]) -> [Int]{
        var mutableDigit = digit
        for (index,item) in digit.reversed().enumerated() {
            if item < 9 {
                mutableDigit[digit.count-1-index] += 1
                return mutableDigit
            }
            mutableDigit[digit.count-1-index] = 0
        }
        var result = Array.init(repeating: 0, count: digit.count+1)
        result[0] = 1
        return result
    }
}

let solution = Solution.init()

let result = solution.plusOne([2,3,4,5,8])

