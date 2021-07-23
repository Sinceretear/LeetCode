import UIKit


class Stack<T> {
    
    var items : [T]
    
    init(){
        self.items = []
    }
    
    func is_empty() -> Bool {
        return items.isEmpty
    }
    
    func push(item: T) {
        self.items.append(item)
    }
    
    func pop() -> T? {
        return self.items.popLast()
    }
    
    func peek() -> T? {
        return items.last
    }
    
    func size() -> Int {
        return items.count
    }
    
    func inspect() -> Array<T> {
        return items
    }
    
}

var string = "gninraeL nIdekniL htiw tol a nraeL"
var reversed_string = ""
var s = Stack<String>()

for char in string {
    s.push(item: String(char))
}

while !s.is_empty() {
    reversed_string += s.pop()!
}

//for _ in s.items {
//    reversed_string += s.pop()!
//}

print(reversed_string)


//var newStack = Stack()
//newStack.push(item: 5)
//newStack.push(item: 8)
//newStack.push(item: 13)
//newStack.push(item: 2)
//newStack.push(item: 9)
//print(newStack.is_empty())
//newStack.peek()
//newStack.pop()
//newStack.inspect()
