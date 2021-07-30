import UIKit

class Stack<T> {
    
    var stack: [T]
    var length : Int
    
    init(){
        self.stack = [T]()
        self.length = 0
    }
    
    func push(item: T){
        self.stack.append(item)
        self.length += 1
    }
    
    func pop() -> T {
        self.length -= 1
        return stack.removeLast()
    }
    
    func isEmpty() -> Bool {
        return stack.isEmpty
    }
    
    func peek() -> T? {
        if !stack.isEmpty {
            return stack.last!
        } else {
            return nil
        }
    }
    
    func print() -> [T] {
        return stack
    }
    
}

var myStack = Stack<Int>()

myStack.push(item: 4)
myStack.push(item: 5)
myStack.push(item: 6)
myStack.peek()
myStack.pop()
myStack.print()

class Queue<T> {
    
    var queue: [T]
    var length : Int
    
    init(){
        self.queue = [T]()
        self.length = 0
    }
    
    func enqueue(item: T){
        self.queue.append(item)
        self.length += 1
    }
    
    func dequeue() -> T {
        self.length -= 1
        return self.queue.removeFirst()
    }
    
    func isEmpty() -> Bool {
        return queue.isEmpty
    }
    
    func peek() -> T? {
        if !queue.isEmpty {
            return queue.first!
        } else {
            return nil
        }
    }
    
    func print() -> [T] {
        return queue
    }
    
}

var myQueue = Queue<Int>()
myQueue.enqueue(item: 4)
myQueue.enqueue(item: 5)
myQueue.enqueue(item: 6)
myQueue.peek()
myQueue.dequeue()
myQueue.print()
