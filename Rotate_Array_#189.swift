Given an array, rotate the array to the right by k steps, where k is non-negative.

 

Example 1:

Input: nums = [1,2,3,4,5,6,7], k = 3
Output: [5,6,7,1,2,3,4]
Explanation:
rotate 1 steps to the right: [7,1,2,3,4,5,6]
rotate 2 steps to the right: [6,7,1,2,3,4,5]
rotate 3 steps to the right: [5,6,7,1,2,3,4]
Example 2:

Input: nums = [-1,-100,3,99], k = 2
Output: [3,99,-1,-100]
Explanation: 
rotate 1 steps to the right: [99,-1,-100,3]
rotate 2 steps to the right: [3,99,-1,-100]


class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        //constant space solution O(1)
        
        // The idea is to reverse the entire array
        //reverse the first half then reverse the second half
        var len = nums.count
        var k = k % len
        reverse(&nums, 0, len - 1)
        reverse(&nums, 0 , k - 1)
        reverse(&nums, k, len - 1)
    }
    
    //algorithm to reverse an array 
    //start starts at 0 end at arr.count
    //two pointers swap elements until then meet in the middle
    func reverse(_ num: inout [Int], _ start: Int, _ end: Int) {
        var start = start
        var end = end
        while (start < end) {
            var tmp = num[start]
            num[start] = num[end]
            num[end] = tmp
            start += 1
            end -= 1 
        }
    }
    
}
