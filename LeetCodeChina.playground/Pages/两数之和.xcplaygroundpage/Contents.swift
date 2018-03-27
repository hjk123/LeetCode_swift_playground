//: [Previous](@previous)

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count > 0 else {
            return [Int].init()
        }
        var result = [Int].init()
        var dictionary = Dictionary<Int,Int>.init()
        for (index,item) in nums.enumerated(){
            let nextNum = target - item
            if let value = dictionary[nextNum] {
                result.append(index)
                result.append(value)
            }
            dictionary.updateValue(index, forKey: item)
        }
        return result
    }
}
