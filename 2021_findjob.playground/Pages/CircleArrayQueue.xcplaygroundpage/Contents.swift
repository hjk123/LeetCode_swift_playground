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
