//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//Given an array with n objects colored red, white or blue, sort them so that objects of the same color are adjacent, with the colors in the order red, white and blue.
//
//Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var redCount = 0
        var blueCount = 0
        var whiteCount = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                redCount += 1
            }
            if nums[i] == 1 {
                whiteCount += 1
            }
            if nums[i] == 2 {
                blueCount += 1
            }
        }
        for i in 0..<nums.count {
            if i < redCount {
                nums[i] = 0
            }
            if i >= redCount && i < redCount + whiteCount {
                nums[i] = 1
            }
            if redCount + whiteCount <= i &&  i < redCount + whiteCount + blueCount {
                nums[i] = 2
            }
        }
    }
}
