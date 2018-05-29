//: [Previous](@previous)

import Foundation

class Solution {
    //Horizontal scanning
//    func longestCommonPrefix(_ strs: [String]) -> String {
//        guard strs.count > 0 else {
//            return ""
//        }
//        var result = strs[0]
//        for i in 1 ..< strs.count {
//            let nextStr = strs[i]
//            while !nextStr.hasPrefix(result) {
//                result = String.init(result.prefix(result.count - 1))
//                if result == "" {
//                    return ""
//                }
//            }
//        }
//        return result
//    }
    //Vertical scaning
//    func longestCommonPrefixTwo(_ strs: [String]) -> String {
//        guard strs.count > 0 else {
//            return ""
//        }
//        for i in 0..<strs[0].count {
//            //
//        }
//        return result
//    }
    //divide and conquer
//    func longestCommonPrefixThree(_ strs: [String]) -> String {
//        guard strs.count > 0 else {
//            return ""
//        }
//        return longestCommonPrefix(strs, right: 0, left: strs.count)
//    }
//    func longestCommonPrefix(_ strs: [String],right: Int,left: Int) -> String {
//        if right == left {
//            return strs[right];
//        }
//        else
//        {
//            let mid: Int = (right + left)/2
//            let rStr = longestCommonPrefix(strs, right: right, left: mid)
//            let lStr = longestCommonPrefix(strs, right: mid+1, left: left)
//            return commonPrefix(rStr, lStr)
//        }
//    }
//    func commonPrefix(_ lString: String,_ rString: String) -> String {
//        var min: Int = lString.count
//        if rString.count < min {
//            min = rString.count
//        }
//        for i in 0..<min {
//            if lString.inde != rString[i]  {
//                return String.init(lString.suffix(i))
//            }
//        }
//        return String.init(lString.suffix(min))
//    }
    
    //binary search
}
