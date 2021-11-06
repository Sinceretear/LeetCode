class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        //check for valid matrix
        if matrix.isEmpty || matrix[0].isEmpty {
            return false
        }
        
        // find out which row the number is in
        var r = 0
        for i in 0..<matrix.count {
            if target == matrix[i][0] || target == matrix[i].last! {
                return true
            } else if target > matrix[i][0] && target < matrix[i].last! {
                r = i
                break
            }
        }
        
        //binary search the row with arrayInput[row]
        func binarySearch(array: [Int], target: Int) -> Bool {
            var l = 0
            var r = array.count - 1
            
            while(l <= r) {
                var mid = l + ( r-l ) / 2
                if array[mid] == target {
                    return true
                } else if array[mid] > target {
                        r = mid - 1
                    } else {
                        l = mid + 1
                    }
                }  
                return false
            }
        
        return binarySearch(array: matrix[r], target: target)
        
    }
}
