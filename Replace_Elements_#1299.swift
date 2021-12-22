class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        
        var ans = [Int](repeating: 0, count: arr.count)
        var max = -1
        
        for i in stride(from: arr.count - 1, through: 0, by: -1)  {
            ans[i] = max
            if arr[i] > max {
                max = arr[i]
            }
        }
        return ans
    }
}
