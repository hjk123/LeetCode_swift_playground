//: [Previous](@previous)

//Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.
//
//Note: You can only move either down or right at any point in time

class Solution {
    //DP 从上向下 每部取最小值 不能得到最优解  从下到上 用DP 的方法可以得到解法
    func minPathSum(_ grid: [[Int]]) -> Int {
        guard grid.count  > 0 && grid[0].count > 0 else {
            return 0
        }
        let m = grid.count
        let n = grid[0].count
        var dp :[[Int]] = Array.init(repeating: Array.init(repeating: 0, count: n), count: m)
        for i in Array(0..<m).reversed() {
            for j in Array(0..<n).reversed() {
                if i == m-1 && j == n-1 {
                    dp[i][j] = grid[i][j]
                }
                else if i == m-1
                {
                    dp[i][j] = dp[i][j+1] + grid[i][j]
                }
                else if j == n-1
                {
                    dp[i][j] = dp[i+1][j] + grid[i][j]
                }
                else
                {
                    dp[i][j] = min(dp[i+1][j], dp[i][j+1]) + grid[i][j]
                }
            }
        }
        return dp[0][0]
    }
}
