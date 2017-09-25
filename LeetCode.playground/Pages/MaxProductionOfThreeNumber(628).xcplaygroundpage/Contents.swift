//: [Previous](@previous)

import Foundation

//Given an integer array, find three numbers whose product is maximum and output the maximum product.
//
//Example 1:
//Input: [1,2,3]
//Output: 6
//Example 2:
//Input: [1,2,3,4]
//Output: 24
//Note:
//The length of the given array will be in range [3,104] and all elements are in the range [-1000, 1000].
//Multiplication of any three numbers in the input won't exceed the range of 32-bit signed integer.

//第一个想法是三层for循环 时间复杂度O(n*n*n) 不用说了 time limit exceeded
class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        let count = nums.count
        guard count >= 3 else {
            return 0
        }
        var result = Int.min
        for i in 0 ..< count {
            for j in i+1 ..< count {
                for k in j+1 ..< count {
                    let temp  = nums[i]*nums[j]*nums[k]
                    if temp > result {
                        result = temp;
                    }
                }
            }
        }
        return result
    }
    //以空间换时间 但是怎么换呢？不是空间换时间 三个数相乘有四种情况: 正正正(取最大的三个数) 负负负(取最大的三个数) 正负负(取最小的两个数和最大的一个数) 正正负(取最小的两个数和最大的一个数)
    //在这种思路下面有两种解法:1. 排序 ，取出这五个数 2. 不排序，直接遍历找出最大的三个数 和最小的两个数字
    func maximumProduct2(_ nums: [Int]) -> Int {
        let count = nums.count
        guard count >= 3 else {
            return 0
        }
        var sortedArr = nums.sorted()
        return max(sortedArr[count-1]*sortedArr[count-2]*sortedArr[count-3], sortedArr[0]*sortedArr[1]*sortedArr[count-1])
    }
    func maximumProduct3(_ nums: [Int]) -> Int {
        let count = nums.count
        guard count >= 3 else {
            return 0
        }
        var min1 = Int.max
        var min2 = Int.max
        var max1 = Int.min
        var max2 = Int.min
        var max3 = Int.min
        for item in nums {
            if item < min1 {
                min2 = min1
                min1 = item
            }
            else if item < min2
            {
                min2 = item
            }
            if item > max1 {
                max3 = max2
                max2 = max1
                max1 = item
            }
            else if item > max2
            {
                max3 = max2
                max2 = item
            }
            else if item > max3
            {
                max3 = item
            }
        }
        return max(min2*min1*max1, max1*max3*max2)
    }
}