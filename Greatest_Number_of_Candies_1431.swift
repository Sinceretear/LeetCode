1431. Kids With the Greatest Number of Candies [Easy]
https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/

Question:

Given the array candies and the integer extraCandies, where candies[i] represents the number of candies that the ith kid has.
For each kid check if there is a way to distribute extraCandies among the kids such that he or she can have the greatest number of candies among them. Notice that multiple kids can have the greatest number of candies.

Example:

Input: candies = [4,2,1,1,2], extraCandies = 1
Output: [true,false,false,false,false] 
Explanation: There is only 1 extra candy, therefore only kid 1 will have the greatest number of candies among the kids regardless of who takes the extra candy.


class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        
       var newArray = [Bool]()
        var maxValueInArr = 0
        
        for i in candies {
            if i >= maxValueInArr {
                maxValueInArr = i
            }
        }
        
        for i in candies {
            if i + extraCandies >= maxValueInArr {
                newArray.append(true)
            } else {
                newArray.append(false)
            }
        }
        return newArray 
    }
}

Solution:

Runtime: 12 ms, faster than 79.65% of Swift online submissions for Kids With the Greatest Number of Candies.
Memory Usage: 13.9 MB, less than 75.09% of Swift online submissions for Kids With the Greatest Number of Candies.
