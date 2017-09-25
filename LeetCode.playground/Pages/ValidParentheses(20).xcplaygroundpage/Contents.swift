//: [Previous](@previous)

import Foundation


//括号匹配问题
//Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.


class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.characters.count > 1 else {
            return false
        }
        let strArr = s.randomAccessStringCharacters(s)
        let dic:Dictionary<Character,Character> = [ ")":"(", "}":"{", "]":"[" ]
        var stack = Array<Character>()
        for char in strArr {
            if char == ")" || char == "}" || char == "]" {
                if let last = stack.last,last == dic[char] {
                    stack.popLast()
                }
                else
                {
                    return false
                }
            }
            else
            {
                stack.append(char)
            }
            
        }
        return stack.isEmpty ? true : false
    }
}
private extension String{
    func randomAccessStringCharacters(_ str: String) -> [Character] {
        return Array(str.characters)
    }
}
