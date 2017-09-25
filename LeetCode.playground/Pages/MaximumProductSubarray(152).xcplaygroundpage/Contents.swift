//: [Previous](@previous)

//Find the contiguous subarray within an array (containing at least one number) which has the largest product(乘积).
//
//For example, given the array [2,3,-2,4],
//the contiguous subarray [2,3] has the largest product = 6

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        if nums.count == 1 {
            return nums[0]
        }
        
    }
}