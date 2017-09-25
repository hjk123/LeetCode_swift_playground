//: [Previous](@previous)

import Foundation

//排序算法
var array  = [1,8,3,5,5,3,7]

print("排序前的值")
print(array)

//冒泡排序
func BubbleSort(_ array :[Int]) -> [Int]{
    var arr = array
    for i in 0 ..< arr.count {
        for j in i + 1 ..< arr.count {
            if arr[i] > arr[j] {
                swap(&arr[i], &arr[j])
            }
        }
    }
    return arr
}
//冒泡排序优化
func BubbleSort2(_ array :[Int]) -> [Int] {
    var arr = array
    var isWaped :Bool
    var indexOfLastUnsorted = arr.count
    repeat{
        isWaped = false
        for i in 0 ..< indexOfLastUnsorted - 1 {
            if arr[i] > arr[i+1] {
                swap(&arr[i], &arr[i+1])
                isWaped = true
                indexOfLastUnsorted = i
            }
        }
    }while(isWaped)
    return arr
}

//简单选择排序
func SelectSort(_ array :[Int]) -> [Int]{
    var arr = array
    for i in 0 ..< arr.count {
        var min :Int = arr[i]
        var index = i//最小元素的index
        for j in i ..< arr.count {
            if arr[j] < min {
                min = arr[j]
                index = j
            }
        }
        let temp = arr[i]
        arr[i] = arr[index]
        arr[index] = temp
        
    }
    return arr
}
//插入排序
func InsertSort(_ array :[Int]) -> [Int]{
    var arr = array
    for i in 1 ..< arr.count {
        var index = i//待插入的下标
        let temp = arr[i]//带插入的值
        for j in (0...i-1).reversed() {
            if temp < arr[j] {
                arr[j+1] = arr[j]
                index = j
            }
            else
            {
                break
            }
        }
        arr[index] = temp
    }
    return arr
}
//归并排序,分而治之的思想，需要好好琢磨一下
func mergeSort(_ array :[Int]) -> [Int]{
    let count = array.count
    if count <= 1 {
        return array
    }
    let num = count/2
    let left :[Int] = mergeSort(Array.init(array[0..<num]))
    let right :[Int] = mergeSort(Array.init(array[num..<count]))
    return merge(left, right)
}
func merge(_ left :[Int],_ right :[Int]) -> [Int]{
    let left_count = left.count
    let right_count = right.count
    var left_index = 0
    var right_index = 0
    var result = [Int]()
    while left_index < left_count && right_index < right_count {
        if left[left_index] < right[right_index] {
            result.append(left[left_index])
            left_index += 1
        }
        else
        {
            result.append(right[right_index])
            right_index += 1
        }
    }
    result.append(contentsOf: left[left_index..<left_count])
    result.append(contentsOf: right[right_index..<right_count])
    return result
}
//快速排序
func qsort(_ array : [Int],_ left :Int,_ right :Int) -> [Int]{
    let arr = array
    if left >= right {
        return arr
    }
    var pivot :Int
    pivot = Partition(arr, left, right)
    qsort(arr, left, pivot-1)
    qsort(arr, pivot + 1, right)
    return arr
}
func Partition(_ array : [Int],_ left :Int,_ right :Int) -> Int{
    var arr = array
    let pivotKey = arr[left]
    var lpoint = left
    var rpoint = right
    while lpoint < rpoint {
        while arr[rpoint] > pivotKey && lpoint < rpoint  {
            rpoint -= 1
        }
        if lpoint != rpoint {
            swap(&arr[lpoint], &arr[rpoint])
        }
        while arr[lpoint] < pivotKey && lpoint < rpoint {
            lpoint += 1
        }
        if lpoint != rpoint {
            swap(&arr[lpoint], &arr[rpoint])
        }
    }
    return lpoint;
}
func quickSort(_ array :[Int]) -> [Int]{
    return qsort(array, 0, array.count-1)
}
let result :[Int] = mergeSort(array)
print("排序后的值")
print(result)




