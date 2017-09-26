//: [Previous](@previous)

//You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.
//
//Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.
//
//Credits:
//Special thanks to @ifanchu for adding this problem and creating all test cases. Also thanks to @ts for adding additional test cases.

class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        if nums.count == 1 {
            return nums[0]
        }
        var result = nums[0]
        var dp :[Int] = Array.init(repeating: 0, count: nums.count)
        dp[0] = nums[0]
        dp[1] = max(nums[0], nums[1])
        if dp[1] > result {
            result = dp[1]
        }
        for i in 2..<nums.count {
            dp[i] = max(nums[i] + dp[i-2], dp[i-1])
            if dp[i] > result {
                result = dp[i]
            }
        }
        return result
    }
}
