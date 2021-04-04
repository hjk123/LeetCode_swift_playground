//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


class SortArray{
    var sortData: [Int]
    var size: Int
    
    init() {
        sortData = [Int].init();
        sortData.append(5)
        sortData.append(3)
        sortData.append(2)
        sortData.append(6)
        sortData.append(7)
        sortData.append(3)
        sortData.append(9)
        size = 7
    }
    
    
    func bubbleSort() ->  Void {
        
    }
    func quickSort() -> Void {
        quickSortHelper(p: 0, q: size - 1)
    }
    // sort(p,q) = sort(p,r) + sort(r,q)
    func quickSortHelper(p: Int,q: Int) -> Void {
        if p >= q {
            return
        }
        let r: Int = partion(p: p, q: q)
        quickSortHelper(p: q, q: r)
        quickSortHelper(p: r + 1, q: q)
    }
    func partion(p: Int,q: Int) -> Int {
        //分区函数
        let pivot = sortData[q]
        var i: Int = p
        for j in p ..< q {
            if sortData[j] < pivot {
                swap(&sortData[i], &sortData[j])
                i = i + 1
            }
            
        }
        swap(&sortData[i], &sortData[q])
        return i
    }
    
    //sort(p,q) = merge(sort(p,r) + sort(r,q))
    func mergeSort(p: Int,q: Int) -> Void {
        if p >= q {
            return
        }
        let r = (p + q)/2
        mergeSort(p: p, q: r)
        mergeSort(p: r + 1, q: q)
        
    }
    func mergeArray(arr1: Int,arr2: Int) -> Void {
        //
    }
    
    func selectSort() ->  Void{
        //
    }
    
    func insertSort() ->  Void{
        //
    }
    
    
}

let sort: SortArray = SortArray.init()

sort.quickSort()

//排序 重点：快速排序 归并排序

class Sort{
    
    var datas: [Int]
    var size: Int
    
    init(size: Int) {
        self.size = size
        self.datas = [Int].init(repeating: 0, count: size)
    }
    
    
    
    deinit {
        
    }
    
}
