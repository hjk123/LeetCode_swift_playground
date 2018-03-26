//: [Previous](@previous)

import Foundation
//There are two sorted arrays nums1 and nums2 of size m and n respectively.
//
//Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
//
//Example 1:
//nums1 = [1, 3]
//nums2 = [2]
//
//The median is 2.0
//Example 2:
//nums1 = [1, 2]
//nums2 = [3, 4]
//
//The median is (2 + 3)/2 = 2.5

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var result: Double = 0.0
        for i in 0 ..< nums1.count {
            result += Double(nums1[i])
        }
        for j in 0 ..< nums2.count {
            result += Double(nums2[j])
        }
        return result/(Double(nums2.count) + Double(nums1.count))
    }
}

