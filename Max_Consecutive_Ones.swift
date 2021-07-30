Given a binary array nums, return the maximum number of consecutive 1's in the array.


Example 1:
Input: nums = [1,1,0,1,1,1]
Output: 3

Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.

Example 2:
Input: nums = [1,0,1,1,0,1]
Output: 2


class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var ones = 0
        var count = 0
        
        var i = 0
        while i < nums.count {
            if nums[i] == 1 {
                ones += 1   
            } else {
                count = max(count, ones)
                ones = 0 
            }
            i += 1
        }
        
        return max(count, ones)
    }
}
