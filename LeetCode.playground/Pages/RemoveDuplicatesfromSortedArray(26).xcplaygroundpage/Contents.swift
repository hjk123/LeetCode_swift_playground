//: [Previous](@previous)

import Foundation

//Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
//
//Do not allocate extra space for another array, you must do this in place with constant memory.
//
//For example,
//Given input array nums = [1,1,2],
//
//Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var index = 0
        while index < nums.count - 1 {
            if nums[index + 1] == nums[index] {
                nums.remove(at: index + 1)
            }
            else
            {
                index += 1
            }
        }
        return nums.count
    }
}
