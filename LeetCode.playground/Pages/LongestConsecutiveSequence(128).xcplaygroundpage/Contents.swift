//: [Previous](@previous)

//import Foundation
//
//Given an unsorted array of integers, find the length of the longest consecutive elements sequence.
//
//For example,
//Given [100, 4, 200, 1, 3, 2],
//The longest consecutive elements sequence is [1, 2, 3, 4]. Return its length: 4.
//
//Your algorithm should run in O(n) complexity.


class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        if nums.count == 1 {
            return 1
        }
        var maxLength = 1
        var temp = 1
        var sortedArray = nums.sorted()
        var index = 1
        while index < sortedArray.count {
            if sortedArray[index] == sortedArray[index-1] {
                index += 1
                continue
            }
            if sortedArray[index] == sortedArray[index-1] + 1 {
                temp += 1
            }
            else
            {
                if temp > maxLength {
                    maxLength = temp
                }
                temp = 1
            }
            index += 1
        }
        if temp > maxLength {
            maxLength = temp
        }
        return maxLength
    }
}

let solution  = Solution.init()
let result = solution.longestConsecutive([1,2,0,1])

		
