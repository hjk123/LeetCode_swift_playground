//: [Previous](@previous)

import Foundation

//Given an array S of n integers, are there elements a, b, c, and d in S such that a + b + c + d = target? Find all unique quadruplets in the array which gives the sum of target.
//
//Note: The solution set must not contain duplicate quadruplets.
//
//For example, given array S = [1, 0, -1, 0, -2, 2], and target = 0.
//
//A solution set is:
//[
//    [-1,  0, 0, 1],
//    [-2, -1, 1, 2],
//    [-2,  0, 0, 2]
//]
class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        if nums.count < 4 {
            return result
        }
        var sortedNums = nums.sorted()
        let count = nums.count
        var i = 0
        while i < count - 3 {
            var j = i + 1
            while j < count - 2 {
                var left = j + 1
                var right = count - 1
                let twoSum = target - sortedNums[i] - sortedNums[j]
                while left < right {
                    if sortedNums[left] + sortedNums[right] > twoSum {
                        right -= 1
                    }
                    else if sortedNums[left] + sortedNums[right] == twoSum
                    {
                        result.append([sortedNums[i],sortedNums[left],sortedNums[right],sortedNums[j]])
                        while left < right && sortedNums[left+1] == sortedNums[left]{
                            left += 1
                        }
                        while left < right && sortedNums[right-1] == sortedNums[right]
                        {
                            right -= 1
                        }
                        left += 1
                        right -= 1
                    }
                    else
                    {
                        left += 1
                    }
                }
                repeat{
                    j += 1
                }while(j < count - 1 && sortedNums[j-1] == sortedNums[j])
            }
            repeat{
                i += 1
            }while(i < count - 2 && sortedNums[i-1] == sortedNums[i])
        }
        return result
    }
}
