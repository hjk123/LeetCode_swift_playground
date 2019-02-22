//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
//实现归并排序、快速排序、插入排序、冒泡排序、选择排序
class Sort{
    //冒泡排序
    func bubSort(arr: [Int]) -> [Int] {
        var tampArr = arr
        for i in 0 ..< tampArr.count {
            for j in i+1 ..< tampArr.count {
                if tampArr[i] > tampArr[j] {
                    let temp: Int = tampArr[i]
                    tampArr[i] = tampArr[j]
                    tampArr[j] = temp
                }
            }
        }
        return tampArr
    }
    //选择排序
//    func selectSort(arr: [Int]) -> [Int] {
//        //
//    }
    //插入排序
    func insertSort(arr: [Int]) -> [Int] {
        var tempArr = arr
        for i in 1..<tempArr.count {
            let value: Int = tempArr[i]
            let j: Int = i - 1
            //查找插入位置
            for k in j...0 {
                if tempArr[k] > value {
                    tempArr[k+1] = tempArr[k]//移动数据
                } else {
                    break
                }
            }
            tempArr[j+1] = value//插入数据
        }
        return tempArr
    }
}
