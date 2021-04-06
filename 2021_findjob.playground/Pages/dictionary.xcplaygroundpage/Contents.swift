//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//
class dictionary{
    //双重for循环 暴力遍历
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = [Int].init()
        for i in 0..<nums.count {
            let first = nums[i]
            let second = target - first
            for j in i+1..<nums.count {
                let item = nums[j]
                if second == item {
                    result.append(i)
                    result.append(j)
                    break
                }
            }
        }
        return result;
    }
    // 用dic存储 空间换时间
    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = [Int].init()
        var dic: Dictionary<Int,Int> = Dictionary.init()
        
        
        for i in 0..<nums.count {
            let num: Int = nums[i]
            if dic.keys.contains(num) {
                result.append(i)
                result.append(dic[num]!)
            }
            dic.updateValue(i, forKey: target - num)
        }
        
        return result;
    }
    
    //三数之和 暴力求解 (没想好如何去重)
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = [[Int]].init()
        for i in 0..<nums.count {
            let first = nums[i]
            for j in i+1..<nums.count {
                let second = nums[j]
                for k in j+1..<nums.count {
                    let third = nums[k]
                    
                    if first + second + third == 0 {
                        var array: [Int] = [Int].init()
                        array.append(i)
                        array.append(j)
                        array.append(k)
                        result.append(array)
                    }
                    
                }
                
            }
        }
        return result
    }
    //三数之和 dic 空间换时间(没想好 如何去重)
    func threeSum2(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = [[Int]].init()
        let set: Set = Set<Int>.init(nums)
        for i in 0..<nums.count {
            let first: Int = nums[i]
            for j in i+1..<nums.count {
                let second: Int = nums[j]
                let third: Int = -(first + second)
                if set.contains(-(first+second)) {
                    var array: [Int] = [Int].init()
                    array.append(first)
                    array.append(second)
                    array.append(third)
                    result.append(array)
                }
            }
        }
        return result
    }
    //经典解法 排序 加 双指针
    func threeSum3(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = [[Int]].init()
        let sortedArr = nums.sorted()
        for i in 0..<sortedArr.count {
            let item = sortedArr[i]
            var left = i+1
            var right = sortedArr.count - 1
            
            while left < right {
                let sum = item + sortedArr[left] + sortedArr[right]
                if sum == 0 {
                    var array: [Int] = [Int].init()
                    array.append(item)
                    array.append(sortedArr[left])
                    array.append(sortedArr[right])
                    result.append(array)
                    while left < right {
                        if sortedArr[left] == sortedArr[left+1] {
                            left += 1
                        }
                        else
                        {
                            break
                        }
                    }
                    while left < right {
                        if sortedArr[right] == sortedArr[right-1] {
                            right -= 1
                        }
                        else
                        {
                            break
                        }
                    }
                }
                else if sum < 0{
                    left += 1
                }
                else
                {
                    right += 1
                }
            }
        }
        return result
    }
}
