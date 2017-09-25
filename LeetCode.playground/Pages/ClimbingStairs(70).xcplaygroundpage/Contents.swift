//: [Previous](@previous)

//You are climbing a stair case. It takes n steps to reach to the top.
//
//Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
//
//Note: Given n will be a positive integer.

class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        var dp :[Int] = Array.init(repeating: 0, count: n)
        dp[0] = 1
        dp[1] = 2
        for i in 2..<n {
            dp[i] = dp[i-1] + dp[i-2]
        }
        return dp[n-1]
    }
}
var solution = Solution.init()
var result = solution.climbStairs(1)
		