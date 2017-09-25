//: [Previous](@previous)

import Foundation

class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        permuteRecurse(nums, startIndex: 0, result: &result)
        print(result)
        return result
    }
    func permuteRecurse(_ temp: [Int],startIndex: Int, result:inout [[Int]]) {
        var nums = temp
        if startIndex >= nums.count {
            result.append(nums)
            return
        }
        for i in startIndex..<nums.count {
            var tmp: Int = nums[startIndex];
            nums[startIndex] = nums[i];
            nums[i] = tmp
            permuteRecurse(nums, startIndex: startIndex + 1, result: &result)
            tmp = nums[startIndex];
            nums[startIndex] = nums[i];
            nums[i] = tmp
        }
    }
    func permuteRecurse2(_ nums :[Int],_ result :inout [[Int]]) {
        var temp = nums;
        if <#condition#> {
            //
        }
        
    }
}

let solution = Solution.init()
let result = solution.permute([1,2,3])
//1. 初始条件
//2. 出口条件
//3. 变换函数
//全排列 可想想象成多叉树的遍历函数中多加一个参数 记录遍历的路径 到达结束条件的时候打印出此路径 由于多叉树的不确定有多少了分支叉，所以才需要一个for循环 分别从每个节点下去调用递归函数，一般二叉树，要调用两次递归函数
