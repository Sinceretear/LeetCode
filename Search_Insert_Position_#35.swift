https://leetcode.com/problems/search-insert-position/


class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var l  = 0
        var r = nums.count - 1
        
        while (l <= r) {
            
            var mid = l + ( r - l) / 2 
            
            if nums[mid] == target {
                return mid 
            } else if nums[mid] < target {
                l = mid + 1
            } else {
                r = mid - 1
            }  
        }
        return l
        
    }
}
