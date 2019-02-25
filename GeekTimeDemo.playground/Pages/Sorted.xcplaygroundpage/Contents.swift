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
                    tampArr.swapAt(i, j)
                }
            }
        }
        return tampArr
    }
    //插入排序
    func insertSort(arr: [Int]) -> [Int] {
        var tempArr = arr
        for i in 1 ..< tempArr.count {
            let value: Int = tempArr[i]
            let j: Int = i - 1
            var index = j
            //查找插入位置
            for k in (0...j).reversed() {
                if tempArr[k] > value {
                    tempArr[k+1] = tempArr[k]//移动数据
                    index -= 1
                } else {
                    break
                }
            }
            tempArr[index+1] = value//插入数据
        }
        return tempArr
    }
    //选择排序
    func selectSort(arr: [Int]) -> [Int] {
        var tempArr = arr
        for i in 0..<tempArr.count {
            var min: Int = tempArr[i]
            var minIndex = i
            for j in i..<tempArr.count {
                if tempArr[j] < min  {
                    min = tempArr[j]
                    minIndex = j
                }
            }
            tempArr.swapAt(minIndex, i)
        }
        return tempArr
    }
    //归并排序
    func mergeSort(arr: [Int]) -> [Int] {
        var tempArr = arr
        mergeHelper(arr: &tempArr, start: 0, end: tempArr.count-1)
        return tempArr
    }
    func mergeHelper(arr: inout [Int], start: Int ,end: Int) -> Void {
        if start >= end {
            return
        }
        let mid = (start + end)/2
        mergeHelper(arr: &arr, start: start, end: mid)
        mergeHelper(arr: &arr, start: mid + 1, end: end)
        merge(arr: &arr, s: start, mid: mid, e: end)
    }
    func merge(arr: inout [Int],s: Int,mid: Int,e: Int) -> Void {
        var i = s
        var j = mid + 1
        var k = 0
        var temp = [Int].init(repeating: 0, count: e-s+1)
        while i <= mid && j <= e {
            if arr[i] <= arr[j] {
                temp[k] = arr[i]
                i+=1
            }
            else
            {
                temp[k] = arr[j]
                j+=1
            }
            k+=1
        }
        var tempStart = i;
        var tempEnd = mid;
        if j <= e {
            tempStart = j
            tempEnd = e
        }
        while tempStart <= tempEnd {
            temp[k] = arr[tempStart]
            tempStart += 1
            k += 1
        }
        for i in 0..<temp.count {
            arr[i] = temp[i]
        }
    }
    //快速排序
    func quickSort(arr: [Int]) -> [Int] {
        var tempArr: [Int] = arr
        quickHelper(arr: &tempArr, start: 0, end: arr.count - 1)
        return tempArr
    }
    func quickHelper(arr: inout [Int], start: Int, end: Int) -> Void {
        if start >= end {
            return
        }
        let q = partition(arr: &arr, start: start, end: end)
        quickHelper(arr: &arr, start: start, end: q-1)
        quickHelper(arr: &arr, start: q+1, end: end)
    }
    func partition(arr: inout [Int], start: Int, end: Int) -> Int {
        let pivot = arr[end]
        var i: Int = start
        for j in start...end-1 {
            if arr[j] < pivot {
                arr.swapAt(i, j)
                i+=1
            }
        }
        arr.swapAt(i, end)
        return i
    }
}

let instance: Sort = Sort.init()
let array: [Int] = [2,3,4,5,6,1,7]

//归并排序
var arr = instance.mergeSort(arr: array)

//冒泡排序
var arr1 = instance.bubSort(arr: array)

//选择排序
var arr2 = instance.selectSort(arr: array)

//插入排序
var arr3 = instance.insertSort(arr: array)

//快速排序
var arr4 = instance.quickSort(arr: array)





