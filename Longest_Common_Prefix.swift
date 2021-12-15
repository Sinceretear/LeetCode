// #14

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if (strs.count == 0) {return ""}
        
        var preFix = strs[0]
        
        for word in strs {
            while !word.hasPrefix(preFix) {
                // Drop each last character of 'commonPrefix' until 'str' 
                // has a prefix of 'commonPrefix' 
                preFix = String(preFix.dropLast())
            }   
        }
        return preFix
        
    }
}
