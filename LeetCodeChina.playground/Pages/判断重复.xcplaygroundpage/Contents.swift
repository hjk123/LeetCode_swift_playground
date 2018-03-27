//: [Previous](@previous)

import Foundation
//
//给定一个整数数组，判断是否存在重复元素。
//
//如果任何值在数组中出现至少两次，函数应该返回 true。如果每个元素都不相同，则返回 false。
//1. 转变成set 比较个数多少
//2. 

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        guard nums.count >= 2 else {
            return false
        }
        let temp: Set = Set(nums)
        return temp.count != nums.count
    }
}
