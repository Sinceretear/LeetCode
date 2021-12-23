class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        
        var result = [Int]()
        
        for x in nums {
            if x % 2 == 0 {
                result.append(x)
            }
        }
        
        for x in nums {
            if x % 2 == 1 {
                result.append(x)
            }
        }
        
        return result
    }
}
