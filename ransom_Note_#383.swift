class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazine = magazine
        
        for char in ransomNote {
            if magazine.contains(String(char)) {
                if let index = magazine.firstIndex(of: char) {
                    magazine.remove(at: index)
                }
            } else {
                return false
            }   
        }
        return true
        
        
    }
}
