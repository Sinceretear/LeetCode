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

//learned nums.enumerated
//remember: 
for (indx, num) in arr.enumerated(){
}
