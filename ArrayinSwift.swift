class MyArray<T> {
    
    var length: Int
    var data: [T]
    
    init() {
        self.length = 0
        self.data = [T]()
    }
    
    func get(index: Int) -> T {
        return self.data[index]
    }
    
    func push(item: T) -> Int {
        self.data.append(item)
        self.length += 1
        return self.length
    }
    
    func pop() -> T? {
        let lastItem = self.data.last
        self.data.removeLast()
        self.length -= 1
        return lastItem
    }
    
    func delete(index: Int) {
        let item = self.data[index]
        self.shiftItems(index: index)
    }
    
    
    func shiftItems(index: Int){
        for i in index..<self.length - 1 {
            self.data[i] = self.data[i + 1]
        }
        self.data.removeLast()
        self.length -= 1
    }
    
    func display() {
        for i in 0...data.count - 1 {
            print(self.data[i])
        }
    }
    
}

var arr = MyArray<String>()

arr.push(item: "1")
arr.push(item: "2")
arr.push(item: "3")
arr.push(item: "4")

arr.delete(index: 1)
arr.display()

arr.push(item: "5")
arr.push(item: "6")

print("-----------------")

arr.delete(index: 0)
arr.display()
