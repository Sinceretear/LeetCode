class Solution {
    func moveZeroes(_ nums: inout [Int]) {
             
        var finalArr = [Int]()
        var a2 = [Int]()
        
        for num in nums {
            if num == 0 {
                finalArr.append(0)
            } else {
                a2.append(num)
            }    
        }
        
        nums  = a2 + finalArr
        
    }
}
