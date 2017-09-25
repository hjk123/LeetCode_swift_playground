//: [Previous](@previous)

import Foundation

class Solution {
    func reverse(_ x: Int32) -> Int32 {
        guard x != 0 else {
            return 0
        }
        var nagetive: Bool
        var i: UInt32
        if x > 0 {
            nagetive = false
            i = UInt32(x)
        }
        else
        {
            nagetive = true
            if x == Int32.min {
                i = UInt32(-(x+1))
                i += 1
            }
            else
            {
                i = UInt32(-x)
            }
        }
        var result: UInt32 = 0
        while i > 0 {
            result = result*10 + i%10
            i = i/10
        }
        if !nagetive && result > UInt32(Int32.max) {
            return 0
        }
        if nagetive && result == UInt32(Int32.max) + 1{
            return 0
        }
        if nagetive {
            return (-1) * Int32(result)
        }
        else
        {
            return Int32(result)
        }
    }
}
let solution = Solution.init()
let result = solution.reverse(214748364)
		