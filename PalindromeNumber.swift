class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        if(x < 0 || (x % 10 == 0 && x != 0)) {
            return false;
        }
        
        var num = x 
        var reversedNum = 0
        
        while(num > reversedNum) {
            reversedNum = reversedNum * 10 + num % 10;
            num /= 10
        }
        return num == reversedNum || num == reversedNum/10;
    }
}

//learned
// while(num > reversedNum) {
//             reversedNum = reversedNum * 10 + num % 10;
//             num /= 10
//         }

//to reverse a number or check a number back to front 
