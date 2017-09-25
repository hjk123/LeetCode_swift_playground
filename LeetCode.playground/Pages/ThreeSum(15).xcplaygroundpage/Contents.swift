//: [Previous](@previous)

import Foundation

//Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero
//
//Note: The solution set must not contain duplicate triplets
//
//For example, given array S = [-1, 0, 1, 2, -1, -4],
//
//A solution set is:
//[
//    [-1, 0, 1],
//    [-1, -1, 2]
//]

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        guard nums.count >= 3 else {
            return result
        }
        var sortedNums = nums.sorted()
        let count = sortedNums.count
        var i = 0
        while (i < count - 2) {
            var left = i + 1
            var right = count - 1
            let twoSum = 0 - sortedNums[i]
            while left < right {
                if sortedNums[left] + sortedNums[right] > twoSum {
                    right -= 1
                }
                else if sortedNums[left] + sortedNums[right] == twoSum
                {
                    result.append([sortedNums[i],sortedNums[left],sortedNums[right]])
                    while left < right && sortedNums[left+1] == sortedNums[left]{
                        left += 1//去重
                    }
                    while left < right && sortedNums[right-1] == sortedNums[right]
                    {
                        right -= 1//去重
                    }
                    left += 1
                    right -= 1
                }
                else
                {
                    left += 1
                }
            }
            //i+1 且去掉重复,三个数字都需要去重
            repeat{
                i += 1
            }while(i < count - 1 && sortedNums[i-1] == sortedNums[i])
        }
        return result
    }
}

let solution = Solution.init()
let result = solution.threeSum([-2,0,1,1,2])





//全部是0的这种情况没通过
