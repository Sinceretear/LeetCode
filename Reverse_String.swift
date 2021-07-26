extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}


var inputString = "Hello World, We are learning Swift!"

func reverse(str: String) -> String {
    var arr = [Character]()
    var revString = ""
    var i = str.count - 1
    while i >= 0 {
        arr.append(str[i])
        i -= 1
    }
    for x in arr {
        revString += String(x)
    }
    return revString
}
reverse(str: inputString)

func reverse(s: String) -> String {
    if s.count < 2 {
        return ""
    }
    var backwards = [String]()
    let totalItems = s.count
    for i in (0..<totalItems).reversed() {
        backwards.append(String(s[i]))
    }
    return backwards.joined(separator: "")
}
print(reverse(s: inputString))
