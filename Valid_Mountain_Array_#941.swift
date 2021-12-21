class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        if arr.count < 3 {return false}
    
        var peak = 0
        
        for i in 0..<arr.count - 1 {
            if arr[i] >= arr[i+1] {
                peak = i
                break;
            }
        }
        
        if (peak == arr.count - 1 || peak == 0) {
            return false
        }
        
        for i in peak..<arr.count - 1 {
            if arr[i] <= arr[i+1] {
                return false
            }
        }
        
        return true
    }
}
