//: [Previous](@previous)

import Foundation
//实现有向图、无向图、有权图、无权图的邻接矩阵和邻接表表示方法
class Graph{
    //邻接矩阵 表示法,无向图 非常简单的道理
    var v: Int
    var adj: [[Int]]
    
    init(v: Int) {
        self.v = v
        self.adj = [[Int]].init(repeating: [Int].init(repeating: 0, count: v), count: v)
    }
    //无向图
    func addEdge(s: Int,v: Int) -> Void {
        adj[s][v] = 1
        adj[v][s] = 1
    }
    //节点s 到节点 v有方向
    func addEdge1(s: Int,v: Int) -> Void {
        adj[s][v] = 1
    }
    //节点s 到节点 v有方向 且带权重
    func addEdge2(s: Int,v: Int,weight: Int) -> Void {
        adj[s][v] = weight
    }
    //节点s 到节点 v无方向 且带权重
    func addEdge3(s: Int,v: Int,weight: Int) -> Void {
        adj[s][v] = weight
        adj[v][s] = weight
    }
    //链表法：把二维数组换成 数组里面 编程链表
    //图的广度优先搜索
    func bfs(s: Int,t: Int) -> Void {
        if s == t {
            return
        }
        var visited: [Bool] = [Bool].init(repeating: false, count: v)
        visited[s] = true
        var queue: [Int] = Array.init()
        queue.append(s)
        
    }
}
