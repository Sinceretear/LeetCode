//PRE-ORDER TRAVERSAL

class Solution {
    
    var result : [Int] = []
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {return result}
        traverse(root)
        return result
    }
    
    func traverse(_ node: TreeNode?) {
        // node
        result.append(node!.val)
        
        // left
        if let leftNode = node!.left {
            traverse(leftNode)
        }
        
        //right
        if let rightNode = node!.right {
            traverse(rightNode)
        }
        
        
    } 
       
}

//POST-ORDER TRAVERSAL

class Solution {
    
    var result : [Int] = []
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {return result}
        traverse(root)
        return result
    }
    
    func traverse(_ node: TreeNode?) {
        // left
        if let leftNode = node!.left {
            traverse(leftNode)
        }
        //right
        if let rightNode = node!.right {
            traverse(rightNode)
        }
        // node
        result.append(node!.val)
    }
}

//IN-ORDER TRAVERSAL
class Solution {
    
    var result : [Int] = []
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {return result}
        traverse(root)
        return result
    }
    
    func traverse(_ node: TreeNode?) {
        // left
        if let leftNode = node!.left {
            traverse(leftNode)
        }
        // node
        result.append(node!.val)
        
        //right
        if let rightNode = node!.right {
            traverse(rightNode)
        }
    }
    
    
}
