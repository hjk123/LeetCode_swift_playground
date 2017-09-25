//: [Previous](@previous)

import Foundation

//Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
//
//For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
//the contiguous subarray [4,-1,2,1] has the largest sum = 6

class Solution {
    //time : n^2
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var max = Int.min
        for i in 0..<nums.count {
            var temp = nums[i]
            if temp > max {
                max = temp
            }
            for j in i + 1..<nums.count {
                temp += nums[j]
                if temp > max {
                    max = temp
                }
            }
        }
        return max
    }
    func maxSubArray2(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var result = nums[0]
        var dp: [Int] = Array.init(repeating: 0, count: nums.count)
        dp[0] = nums[0]
        for i in 1..<nums.count {
            if dp[i-1] > 0 {
                dp[i] = dp[i-1] + nums[i]
            }
            else{
                dp[i] = nums[i]
            }
            if dp[i] > result {
                result = dp[i]
            }
        }
        return result
    }
}