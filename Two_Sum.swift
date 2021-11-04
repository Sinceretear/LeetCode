class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var map = [Int:Int]()
        
        for (idx, num) in nums.enumerated() {
            var diff = target - num
            if let val = map[diff] {
                return [idx,val]
            }
            map[num] = idx
        }
        return []
    }
}

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dict = [Int:Int]()
        
        for i in 0..<nums.count {
            
            var value = nums[i]
            
            var diff = target - value
            
            if dict[diff] != nil {
                return [dict[diff]!, i]
            } else {
                dict[value] = i
            }
        }
        
        return [0]
    }
}



//learned nums.enumerated
//remember: 
for (indx, num) in arr.enumerated(){
}
