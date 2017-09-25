//: [Previous](@previous)

import Foundation

class ListNode{
    var val :Int
    var next :ListNode?
    init(value :Int) {
        val = value
        next = nil
    }
}

//搜索相关算法:
//1.顺序查找:顺序存储结构或者链式存储结构。时间复杂度为O(n)
//2.折半查找:必须是排序好的,无序需要进行排序操作。时间复杂度为O(O(logn))
//3.经过以上分析，折半查找这种查找方式，不是自适应的（也就是说是傻瓜式的）。二分查找中查找点计算如下：
//　　mid=(low+high)/2, 即mid=low+1/2*(high-low);
//　　通过类比，我们可以将查找的点改进为如下：
//　　mid=low+(key-a[low])/(a[high]-a[low])*(high-low)
//4.fibonacci 查找
//以上的2，3，4都是对顺序存储结构查找效率的提升
//5.binarySearchTree 二叉搜索树 查找的时间复杂度为logN,但是特殊情况下，当树为一颗链表的时候就要平衡一下就有一下两种平衡
//5.1 平衡二叉查找树之 2-3 查找树
//5.2 平衡二叉查找树之 红黑树
//5.3 b树 和 b+ 树
//5.4 

//class solution{
//    //顺序查找
//    func sequenceSearch(target :Int,array :Int[]) -> Int? {
//        for item in array {
//            if item == target {
//                return item
//            }
//        }
//        return nil
//    }
//    //二分查找
//    func binarySearch(target :Int,array :Int[]) -> Int?{
//        var low :Int = 0
//        var high :Int = array.count - 1
//        var mid :Int
//        while low < high {
//            mid = (low + high)/2
//            if array[mid] == target {
//                return array[mid]
//            }
//            if target > array[mid] {
//                low = mid
//            }
//            else
//            {
//                high = mid
//            }
//        }
//        return nil
//    }
//    
//    //插值查找
//    func insertSearch(target :Int,array :[Int]) -> Int? {
//        var low :Int = 0
//        var high :Int = array.count - 1
//        var mid :Int
//        while low < high {
//            mid = low + (target - array[low])/(array[high] - target)*(high - low)
//            if array[mid] == target {
//                return array[mid]
//            }
//            if target > array[mid] {
//                low = mid
//            }
//            else
//            {
//                high = mid
//            }
//        }
//        return nil
//    }
//    
//    
//}


