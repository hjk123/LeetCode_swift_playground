//: [Previous](@previous)

import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 0 else {
            return
        }
        var lastNonZeroFoundAt = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[lastNonZeroFoundAt] = nums[i]
            }
            lastNonZeroFoundAt += 1
        }
        for j in lastNonZeroFoundAt..<nums.count {
            nums.insert(0, at: j)
        }
        
    }
}
