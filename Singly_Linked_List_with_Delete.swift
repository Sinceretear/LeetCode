import UIKit

class Node<T> {
    var value: T
    var next: Node?
    var previous: Node?
    
    init(value: T) {
      self.value = value
    }

}

class LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    var length: Int

    init(value: T){
        self.head = Node(value: value)
        self.head!.next = nil
        self.head!.previous = nil
        self.tail = head
        self.length = 1
    }
    
      var isEmpty: Bool {
        return head == nil
      }

      var first: Node<T>? {
        return head
      }

      var last: Node<T>? {
        return tail
      }
    
    func prepend(value: T) {
        let newNode = Node(value: value)
        newNode.next = head
        self.head = newNode
        length += 1
    }
    
    
    func append(value: T) {
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        }
        else {
            head = newNode
        }
            tail = newNode
        length += 1
    }
    
    
    func insert(pos: Int, value: T) {
        if pos >= self.length {
            self.append(value: value)
        }
        
        if pos == 0 {
            self.prepend(value: value)
            return
        }
        
        var node = head
        var i=0
        
        while i < pos - 1 {
            node = node?.next
            i += 1
        }
        
        let newNode = Node(value: value)
        
        newNode.next = node?.next
        newNode.previous = node
        
        node?.next?.previous = newNode
        node?.next = newNode
        
        length += 1
    }
    
    func delete(index: Int) {
        

        if index >= self.length {
            tail = tail?.previous
            tail?.next = nil
            return
        }


        if index == 0 {
            head = head?.next
            return
        }
        
        var i=0
        var node = head
        while i < index - 1 {
            node = node?.next
            i += 1
        }
        let unwantedNode = node?.next
        node?.next = unwantedNode?.next
        
        length -= 1
    }
    
    func print() -> [T] {
        var Arr = [T]()
        var node = head
        
        while node?.next != nil {
            Arr.append(node!.value)
            node = node?.next
        }
        Arr.append(node!.value)
        return Arr
    }
    
}


let myLL =  LinkedList(value: 0)

myLL.append(value: 1)
myLL.append(value: 2)
myLL.append(value: 3)
myLL.append(value: 8)
myLL.append(value: 9)
myLL.append(value: 10)
myLL.append(value: 11)

myLL.delete(index: 1)

//myLL.prepend(value: 6)
//myLL.insert(pos: 1, value: 9)
//myLL.insert(pos: 99, value: 50)

myLL.print()
