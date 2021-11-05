class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left  = 0
        var right = nums.count - 1
        
        while (left <= right) {
             var pivot = left + (right - left) / 2;
                if(nums[pivot] == target) { return pivot}
                if (target < nums[pivot])  {
                    right = pivot - 1
                } else {
                    left = pivot + 1
                }
        }
        return -1
    }
}

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        var leftVal = 0
        var rightVal = nums.count - 1
        
        while leftVal <= rightVal {
           var mid = leftVal + (rightVal - leftVal) / 2
            if nums[mid] == target {
                return mid  
            } 
            else if nums[mid] < target {
                leftVal = mid + 1
            } else {
              rightVal = mid - 1  
            }
        }
        return -1
        
    }
}
