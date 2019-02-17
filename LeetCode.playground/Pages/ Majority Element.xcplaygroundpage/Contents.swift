//: [Previous](@previous)

import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        return getMajorityElement(nums, 0, nums.count-1)
    }
    func getMajorityElement(_ nums: [Int],_ start: Int,_ end: Int) -> Int {
        if start == end {
            return nums[start]
        }
        else
        {
            let mid: Int = (start + end)/2
            let left: Int = getMajorityElement(nums, start, mid)
            let right: Int = getMajorityElement(nums, mid + 1, end)
            
            if left == right {
                return left
            }
            
            let leftCount = countInRange(nums, left, start, end)
            let rightCount = countInRange(nums, right, start, end)
            
            return leftCount > rightCount ? leftCount : rightCount
            
            
        }
    }
    func countInRange(_ nums: [Int],_ num: Int,_ start: Int,_ end: Int) -> Int {
        var count :Int = 0
        for i in start...end {
            if nums[i] == num {
                count += 1
            }
        }
        return count
    }
}
