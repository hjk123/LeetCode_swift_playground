//: [Previous](@previous)

import Foundation

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
       
        if nums.count == 1 && nums[0] == 0 {
            return true
        }
        var result: Bool = false
        for i in 0 ..< nums.count {
            if nums[i] > nums.count - 1 - i {
                result = true
            }
            else
            {
                continue
            }
        }
        return result
    }
}
