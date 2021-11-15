class Solution {
    
    var result : [Int] = []
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {return result}
        traverse(root)
        return result
    }
    
    func traverse(_ node: TreeNode?) {
        if let leftNode = node!.left {
            traverse(leftNode)
        }
        result.append(node!.val)
        if let rightNode = node!.right {
            traverse(rightNode)
        }
    }
    
    
}

//return all left nodes --> then nodes --> right nodes
