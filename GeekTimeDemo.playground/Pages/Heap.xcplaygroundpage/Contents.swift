

public class Heap {
    
    var a: [Int] //数组 从下标1开始存储数据
    var n: Int // 堆可以存储的最大数据个数
    var count: Int // 堆中已经存储的数据个数
    
    init(capacitty: Int) {
        n = capacitty
        count = 0
        a = [Int].init(repeating: 0, count: capacitty + 1)
    }
    
    //往堆中插入一个数据
    public func insert(data: Int) -> Void {
        if count >= n {
            return //堆满了
        }
        count += 1
        a[count] =  data
        var i = count
        while i/2 > 0 && a[i] > a[i/2] {
            a.swapAt(i, i/2)
            i = i/2
        }
    }
    
    //删除堆顶元素
    public func removeMax() -> Int {
        var result = 0
        if count == 0 {
            return -1
        }
        result = a[1]
        a[1] = a[count]
        count -= 1
        heapify(n: count, i: 1)
        return result
    }
    
    //堆化
    func heapify(n: Int,i: Int) -> Void {
        while true {
            var maxPos = i
            var j = i
            if j*2 <= n && a[j] < a[j*2] {
                maxPos = j*2
            }
            if j*2 + 1 <= n && a[maxPos] < a[j*2 + 1] {
                maxPos = j*2 + 1
            }
            if maxPos == j {
                break;
            }
            a.swapAt(j, maxPos)
            j = maxPos
        }
    }
}


var heap = Heap.init(capacitty: 10)

heap.insert(data: 10)
heap.insert(data: 12)
heap.insert(data: 6)
heap.insert(data: 8)
heap.insert(data: 9)
heap.insert(data: 15)
heap.insert(data: 13)
heap.insert(data: 18)

var max = heap.removeMax()
heap
var max1 = heap.removeMax()
heap
var max2 = heap.removeMax()
heap
var max3 = heap.removeMax()
heap
var max4 = heap.removeMax()
heap
var max5 = heap.removeMax()
heap
var max6 = heap.removeMax()
heap
var max7 = heap.removeMax()

