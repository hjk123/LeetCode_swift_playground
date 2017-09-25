//: [Previous](@previous)

import Foundation

//Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
//
//For example, given n = 3, a solution set is:
//
//[
//"((()))",
//"(()())",
//"(())()",
//"()(())",
//"()()()"
//]

class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else {
            return [String]();
        }
        var result = [String]();
        generate(0, n*2, "", 0, 0, &result)
        return result;
    }
    func generate(_ level :Int,_ n :Int,_ currentState :String,_ left :Int,_ right :Int,_ result : inout [String]) {
        if level >= n {
            //一种解决办法是在这里加一个valid 方法 判断currentState是否合法 合法才加入到result 中
            result.append(currentState);
            return;
        }
        if left < n/2 {
             generate(level + 1, n, currentState + "(", left + 1, right, &result);
        }
        if right < n/2 && right < left {
            generate(level + 1, n, currentState + ")", left, right + 1, &result);
        }

    }
}
var solution = Solution.init()
var result = solution.generateParenthesis(2)
print(result)
//想象成一颗二叉树，列举出了所有的遍历路径，如果要得到正确的结果，现在要进行剪枝操作

