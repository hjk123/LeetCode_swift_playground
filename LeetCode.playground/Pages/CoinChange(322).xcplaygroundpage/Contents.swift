//: [Previous](@previous)

//You are given coins of different denominations and a total amount of money amount. Write a function to compute the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.
//
//Example 1:
//coins = [1, 2, 5], amount = 11
//return 3 (11 = 5 + 5 + 1)
//
//Example 2:
//coins = [2], amount = 3
//return -1.
//
//Note:
//You may assume that you have an infinite number of each kind of coin.
//
//Credits:
//Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.

//这个问题就是0-1背包问题,用动态规划解决
//状态的定义: f[i]: 表示钱数为i时找零的最少硬币个数
//状态转移方程: f[i] = min(f[i-1],f[i-coins[j]] + 1)
class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard coins.count > 0 else {
            return -1
        }
        guard amount > 0 else {
            return 0
        }
        var dp: [Int] = Array.init(repeating: amount + 1, count: amount + 1)
        dp[0] = 0
        for i in 1...amount {
            for j in 0..<coins.count {
                if coins[j] <= i {
                    dp[i] = min(dp[i-1], dp[i-coins[j]] + 1)
                }
            }
        }
        return dp[amount] > amount ? -1 : dp[amount]
    }
}
