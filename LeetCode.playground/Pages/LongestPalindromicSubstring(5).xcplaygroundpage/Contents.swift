//: [Previous](@previous)

import Foundation

//Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.
//
//Example:
//
//Input: "babad"
//
//Output: "bab"
//
//Note: "aba" is also a valid answer.
//Example:
//
//Input: "cbbd"
//
//Output: "bb"
class Solution {
    func longestPalindrome(_ s: String) -> String {
        //暴力求解
        //二维 DP 求解
//        var result = ""
//        guard s.count > 0 else {
//            return ""
//        }
//        let strArr = String.randomAccessStringCharacters(s)
//        for x in 0 ..< strArr {
//            for y in 0 ... x {
//                if isPalindromicString(s, <#T##end: Int##Int#>) {
//                    <#code#>
//                }
//            }
//        }
        
        return ""
        
    }
    func isPalindromicString(_ start: Int,_ end: Int) -> Bool {
        return true;
    }
}
private extension String{
    func randomAccessStringCharacters(_ str: String) -> [Character] {
        return Array(str.characters)
    }
}
