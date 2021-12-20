class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {return true}
        return  p?.val == q?.val 
                && isSameTree(q?.left, p?.left) 
                && isSameTree(q?.right, p?.right)
    }
}
