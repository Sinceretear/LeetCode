class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        if s == "" {return 0}
        
        var revS = s.split(separator: " ").reversed()
        
        if let firstWord = revS.first {
            return firstWord.count
        }
        
        return 0
    }
}
