//: [Previous](@previous)

import Foundation

//Given a triangle, find the minimum path sum from top to bottom. Each step you may move to adjacent numbers on the row below.
//
//For example, given the following triangle
//  [
//      [2],
//     [3,4],
//    [6,5,7],
//   [4,1,8,3]
//  ]
//The minimum path sum from top to bottom is 11 (i.e., 2 + 3 + 5 + 1 = 11).
//
//Note:
//Bonus point if you are able to do this using only O(n) extra space, where n is the total number of rows in the triangle.


class Solution {
    //这种方式不能求得最优解  开始你选择的比较小的值 但是错过了后面更小的值 每次只能走左右两步
//    func minimumTotal(_ triangle: [[Int]]) -> Int {
//        guard triangle.count > 0 else {
//            return 0
//        }
//        var dp :Array<(Int,Int)> = Array.init(repeating: (0,0), count: triangle.count)
//        dp[0] = (triangle[0][0],0)
//        for i in 1..<triangle.count {
//            var min = 0
//            var temp: Array = triangle[i]
//            if temp[dp[i-1].1] > temp[dp[i-1].1 + 1] {
//                min = temp[dp[i-1].1 + 1]
//                dp[i].1 = dp[i-1].1 + 1
//            }
//            else
//            {
//                min = temp[dp[i-1].1]
//                dp[i].1 = dp[i-1].1
//            }
//            dp[i].0 = dp[i-1].0 + min
//        }
//        return dp[triangle.count-1].0
//    }
    //mp(i,j) = min(mp(i+1,j),mp(i+1,j+1)) + array(i,j)
    func minimumTotal3(_ triangle: [[Int]]) -> Int {
        guard triangle.count > 0 else {
            return 0
        }
        var dp = triangle.last!
        for i in stride(from: triangle.count - 2, through: 0, by: -1) {
            for j in 0...i {
                dp[j] = min(dp[j],dp[j+1]) + triangle[i][j]
            }
        }
        return dp[0]
    }
    //DP 好像不能获得最优解，思考第二种方式，遍历获得所有的路径,取最小值
    func minimumTotal2(_ triangle: [[Int]]) -> Int {
        if triangle.count == 1 {
            return triangle[0][0]
        }
        var min = Int.max
        var result = [Int]()
        recursion(triangle, &result, 0, triangle[0][0], 0)
        for item in result {
            if item < min {
                min = item
            }
        }
        return min
    }
    func recursion(_ triangle: [[Int]],_ result: inout [Int],_ level: Int,_ sumPath: Int,_ index: Int) {
        if level == triangle.count - 1 {
            result.append(sumPath)
            return
        }
        recursion(triangle, &result, level + 1, sumPath + triangle[level + 1][index], index)
        recursion(triangle, &result, level + 1, sumPath + triangle[level + 1][index + 1], index + 1)
    }
}

let solution = Solution.init()
let result = solution.minimumTotal3([[46],[43,61],[10,-16,3],[-26,41,36,-72]])


