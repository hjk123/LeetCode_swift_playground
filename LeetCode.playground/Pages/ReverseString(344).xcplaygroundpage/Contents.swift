//: [Previous](@previous)

import Foundation

//Write a function that takes a string as input and returns the string reversed.
//
//Example:
//Given s = "hello", return "olleh"

//pass one time and beats 100% submissions
class Solution {
    func reverseString(_ s: String) -> String {
        let arr = Array(s.characters)
        let reverseArr = arr.reversed()
        var result = ""
        for char in reverseArr {
            result.append(char)
        }
        return result
    }
}
