class Solution {
    func minRemoveToMakeValid(_ s: String) -> String {
        var arr = Array(s)
        var stack = [Int]()
        
        for (i, char) in arr.enumerated() {
            if char == "(" {
                stack.append(i)
            } else if char == ")" {
                if !stack.isEmpty {
                    stack.removeLast()
                } else {
                    arr[i] = "*"
                }
            }
        }
        while !stack.isEmpty {
            let i = stack.removeLast()
            arr[i] = "*"
        }
        
        return String(arr).replacingOccurrences(of: "*", with: "")
    }
}
