//: [Previous](@previous)

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        for i in 0..<nums.count {
            let num = nums[i]
            var result = 0
            
            if num >= target {
                result = i;
            }
            if num < target {
                continue
            }
            return result;
        }
    }
}
