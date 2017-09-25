//: Playground - noun: a place where people can play

import UIKit

//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//Example:
//Given nums = [2, 7, 11, 15], target = 9,
//
//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1].

///swift 数组中直接不支持for(int i = 1,i < array.count,i++) O(n*n) 时间复杂度的遍历操作不好实现，这种暴力遍历的方式可以直接放弃
///更新：swift 是支持的 for i in 0..<array.count{} 所以第一想法是双重for循环解决问题,但是
class solution{
    func twoSum(_ nums: [Int], target: Int) -> [Int] {
        var result = [Int]()
        guard nums.count > 0 else {
            return result
        }
        var dic = Dictionary<Int, Int>.init()
        for (index,item) in nums.enumerated() {
            let nextNum = target - item
            if let value = dic[nextNum] {
                result.append(index)
                result.append(value)
                return result
            }
            dic.updateValue(index, forKey: item)
        }
        return result
    }
}
