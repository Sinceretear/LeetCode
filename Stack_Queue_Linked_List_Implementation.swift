class Node<T> {
    var next:Node?
    var value: T
    var prev:Node?

    init(value: T) {
        self.value = value
    }
}

class Stack<T> {

    var head: Node<T>?
    var bottom: Node<T>?
    var length : Int

    init(){
        self.head = nil
        self.bottom = nil
        self.length = 0
    }

    func push(item: T) {
        let newNode = Node<T>(value: item)

        if length == 0 {
            self.head = newNode
            self.bottom = newNode
            self.length += 1
            return
        } else {
            let top = head
            self.head = newNode
            self.head?.next = top
            self.length += 1
        }

    }

    func pop() -> T? {
        if head == nil {
            return nil
        }

        self.head = self.head?.next
        self.length -= 1

        return head?.value
    }

    func isEmpty() -> Bool {
        return head == nil
    }

    func peek() -> T? {
        return self.head?.value
    }

    func print() -> [T] {
        var top = self.head
        var arr = [T]()
        while top != nil {
            arr.append(top!.value)
            top = top?.next
        }
        return arr.reversed()
    }

}

var myStack = Stack<Int>()
myStack.push(item: 1)
myStack.push(item: 2)
myStack.push(item: 3)
myStack.push(item: 4)
myStack.push(item: 5)
myStack.push(item: 6)
myStack.print()
myStack.pop()
myStack.print()

class Queue<T> {
    
    var front: Node<T>?
    var back: Node<T>?
    var length : Int
    
    init(){
        self.front = nil
        self.back = nil
        self.length = 0
    }
    
    func enqueue(item: T) {
        
        
        let newNode = Node(value: item)
        
        if length == 0 {
            self.front = newNode
            self.back = newNode
        } else {
            self.back!.next = newNode
            self.back = newNode
        }
        self.length += 1
    }
    
    func dequeue() -> T {
        
        if length >= 1 {
            self.front = self.front?.next
            self.length -= 1
            return front!.value
        } else {
            self.length -= 1
            return front!.value
        }
        
    }
    
    func isEmpty() -> Bool {
        return front == nil
    }
    
    func peek() -> T? {
        return front?.value
    }
    
    func print() -> [T] {
        var node = front
        var arr = [T]()
        while node != nil {
            arr.append(node!.value)
            node = node!.next
        }
        return arr
    }
    
}

var myQueue = Queue<Int>()
myQueue.enqueue(item: 4)
myQueue.enqueue(item: 5)
myQueue.enqueue(item: 6)
myQueue.peek()
myQueue.dequeue()
myQueue.print()
