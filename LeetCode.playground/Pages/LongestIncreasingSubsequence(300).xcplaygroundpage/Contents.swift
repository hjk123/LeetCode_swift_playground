//: [Previous](@previous)

import Foundation

//Given an unsorted array of integers, find the length of longest increasing subsequence.
//
//For example,
//Given [10, 9, 2, 5, 3, 7, 101, 18],
//The longest increasing subsequence is [2, 3, 7, 101], therefore the length is 4. Note that there may be more than one LIS combination, it is only necessary for you to return the length.
//
//Your algorithm should run in O(n2) complexity.
//
//Follow up: Could you improve it to O(n log n) time complexity?
//
//Credits:
//Special thanks to @pbrother for adding this problem and creating all test cases.

class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        guard nums.count != 0 else {
            return 0
        }
        var result: Int = 1
        var dp: [Int] = Array.init(repeating: 1, count: nums.count)
        dp[0] = 1
        for i in 1..<nums.count {
            dp[i] = getOptimizedState(dp, nums, i)
            result = max(dp[i], result)
        }
        return result
    }
    func getOptimizedState(_ dp: [Int],_ nums: [Int],_ i: Int) -> Int{
        var maxLength = 1
        for j in 0..<i {
            if nums[j] < nums[i] {
                maxLength = max(maxLength, dp[j] + 1)
            }
        }
        return maxLength
    }
}


