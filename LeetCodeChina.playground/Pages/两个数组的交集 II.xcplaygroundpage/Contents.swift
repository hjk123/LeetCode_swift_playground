//: [Previous](@previous)

import Foundation

//给定两个数组，写一个方法来计算它们的交集。
//
//例如:
//给定 nums1 = [1, 2, 2, 1], nums2 = [2, 2], 返回 [2, 2].
//
//注意：
//
//输出结果中每个元素出现的次数，应与元素在两个数组中出现的次数一致。
//我们可以不考虑输出结果的顺序。
//跟进:
//
//如果给定的数组已经排好序呢？你将如何优化你的算法？
//如果 nums1 的大小比 nums2 小很多，哪种方法更优？
//如果nums2的元素存储在磁盘上，内存是有限的，你不能一次加载所有的元素到内存中，你该怎么办？


class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        guard nums1.count > 0 && nums2.count > 0 else {
            return [Int].init()
        }
        var result = [Int].init()
        var tempTable: Dictionary<Int,Int> = Dictionary<Int,Int>.init()
        for i in 0 ..< nums1.count {
            if tempTable.keys.contains(nums1[i]) {
                let value = tempTable[nums1[i]]
                tempTable.updateValue( value! + 1, forKey: nums1[i])
            } else {
                tempTable.updateValue(1, forKey: nums1[i])
            }
        }
        for j in 0 ..< nums2.count {
            if tempTable.keys.contains(nums2[j]) && tempTable[nums2[j]]! > 0 {
                let value = tempTable[nums2[j]]
                tempTable.updateValue( value! - 1, forKey: nums2[j])
                result.append(nums2[j])
            }
        }
        return result
        
        //如果已经排好序了 改如何解决
    }
}
