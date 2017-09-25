//: [Previous](@previous)

import Foundation

//Given an unsorted integer array, find the first missing positive integer.
//
//For example,
//Given [1,2,0] return 3,
//and [3,4,-1,1] return 2.
//
//Your algorithm should run in O(n) time and uses constant space.

class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 1
        }
        let setNum = Set.init(nums)
        for i in 1...nums.count {
            if !setNum.contains(1) {
                return i
            }
        }
        return nums.count + 1
    }
}