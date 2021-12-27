//Iterative

class Solution {
     func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {return []}

        var result = [[Int]]()
        var q = [TreeNode?]()

        q.append(root)

        while (!q.isEmpty) {
            var count = q.count
            var temp = [Int]()

            for i in 0..<count {
                if let node = q.removeFirst() {
                    temp.append(node.val)
                    count -= 1
                    if let l = node.left {q.append(l)}
                    if let r  = node.right {q.append(r)}
                }
            } 
            
            result.append(temp)
        }
    
        return result
    }
}
