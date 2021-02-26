import UIKit
//用环形数组实现一个有界队列

class CircleArrayQueue {
    //数组
    var data: [Int]
    
    //队列长度 头 尾
    var size: Int = 0 , head: Int = 0 , tail: Int = 0
    
    init(size: Int) {
        data = [Int].init(repeating: 0, count: size)
    }
    
    
    func add(element: Int) -> Bool {
        if (tail + 1) % size == head {
            return false
        }
        data[tail] = element
        tail = (tail + 1) % size
        return true
    }
    
    func poll() -> Int? {
        if tail == head {
            return nil
        }
        let result = data[head]
        head = (head + 1)/size
        return result;
    }
}

//生产者

class Producer {
    
    var queue: CircleArrayQueue = CircleArrayQueue.init(size: 10)
    
    
}

//消费者
class Consumer{
    
    var queue: CircleArrayQueue = CircleArrayQueue.init(size: 10)
    
    
}

class ArrayQueue {
    
    var data: [Int]
    
    var head: Int = 0 , tail: Int = 0 , size: Int = 0
    
    init(size: Int) {
        self.data = Array.init(repeating: 0, count: size)
        self.size = size
    }
    
    //入队 考虑tail 到队尾了 要数据迁移的情况（上面的环形数组 也能解决数据迁移的问题）
    func enqueue(element: Int) -> Bool {
        if tail == size {
            //队列满了
            if head == 0 {
                return false
            }
            //数据迁移
            for i in head..<tail {
                data[i - head] = data[i]
            }
            head = 0
            tail -= head
        }
        data[tail] = element
        tail += 1
        return true
    }
    
    //出队
    func dequeue(element: Int) -> Int? {
        //队列空了
        if head == tail {
            return nil
        }
        let result = data[head]
        head += 1
        return result
    }
}
