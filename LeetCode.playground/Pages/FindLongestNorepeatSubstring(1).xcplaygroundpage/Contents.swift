//: [Previous](@previous)

import Foundation

//Given a string, find the length of the longest substring without repeating characters.
//
//Examples:
//
//Given "abcabcbb", the answer is "abc", which the length is 3.
//
//Given "bbbbb", the answer is "b", with the length of 1.
//
//Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.


//
class Solution {
    func longestNorepeatSubstring(_ s :String) -> Int {
        guard s.characters.count > 1 else {
            return s.characters.count
        }
        var arr = s.randomAccessStringCharacters(s)
        var maxLength = 1
        var tmpMaxLength = 1
        var dic = Dictionary<Character,Int>.init()
        dic[arr[0]] = 0
        for i in 1..<arr.count {
            if let lastPosition = dic[arr[i]]  {
                if lastPosition < i - tmpMaxLength {
                    tmpMaxLength += 1
                }
                else
                {
                    tmpMaxLength = i - lastPosition
                }
            }
            else
            {
                tmpMaxLength += 1
            }
            dic[arr[i]] = i
            if tmpMaxLength > maxLength {
                maxLength = tmpMaxLength
            }
        }
        return maxLength
    }
}

private extension String{
    func randomAccessStringCharacters(_ str: String) -> [Character] {
        return Array(str.characters)
    }
}


let solution = Solution.init()

let result = solution.longestNorepeatSubstring("abcabcbb")

