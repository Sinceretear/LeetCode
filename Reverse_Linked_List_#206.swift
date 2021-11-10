class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard var head = head else {return head}
        
        var dummy: ListNode? = nil
        var current = head
        var nextNode = head.next
        
        while nextNode != nil {
            current.next = dummy
            dummy = current
            current = nextNode!
            nextNode = current.next
        }
        current.next = dummy
        dummy = current
        
        return dummy
    }
}
