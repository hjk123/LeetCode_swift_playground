//: [Previous](@previous)

import Foundation

//Given an array consisting of n integers, find the contiguous subarray of given length k that has the maximum average value. And you need to output the maximum average value.
//
//Example 1:
//Input: [1,12,-5,-6,50,3], k = 4
//Output: 12.75
//Explanation: Maximum average is (12-5-6+50)/4 = 51/4 = 12.75
//Note:
//1 <= k <= n <= 30,000.
//Elements of the given array will be in the range [-10,000, 10,000].


//这种解法 Time Limit Exceeded 超时了 时间复杂度O(n*k)
class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        let count = nums.count
        var maxAverage :Double = Double.init(Int.min)
        var temp :Double = 0.0
        guard k <= count && count > 0 && k > 0  else {
            return 0
        }
        if count == 1 && k == 1 {
            return Double(nums[0])
        }
        for i in 0 ... count - k {
            for j in i ..< i + k {
                temp +=  Double(nums[j])
            }
            let tempAverage = temp/Double(k)
            if tempAverage > maxAverage {
                maxAverage = tempAverage
            }
            temp = 0.0
        }
        return maxAverage
    }
}
let solution :Solution = Solution.init()

let result :Double = solution.findMaxAverage([3,3,4,3,0], 3)

print(result)

//时间复杂度O(n) 空间复杂度O(n)
class Solution2{
    func findMaxAverage(_ nums :[Int], _ k :Int) -> Double {
        let count = nums.count
        guard k <= count && count > 0 && k > 0  else {
            return 0
        }
        if count == 1 && k == 1 {
            return Double(nums[0])
        }
        var sums = Array.init(repeating: 0, count: count)
        sums[0] = nums[0]
        for i in 1 ..< nums.count {
            sums[i] = sums[i-1] + nums[i]
        }
        print(sums)
        var maxAverage :Double  = Double(sums[k-1])/Double(k)
        for j in k ..< sums.count {
            let average = Double(sums[j] - sums[j-k])/Double(k)
            maxAverage = Double.maximum(average, maxAverage)
           
        }
        return maxAverage
    }
}
let solution2 :Solution2 = Solution2.init()

let result2 :Double = solution2.findMaxAverage([1,12,-5,-6,50,3], 4)

print(result2)

