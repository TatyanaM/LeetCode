//Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
//

    
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if(l1 == nil) {return l2}
    if(l2 == nil) {return l1}
    var result:ListNode?
    
    if(l1!.val <= l2!.val) {
        result = l1
        result!.next = mergeTwoLists(l1!.next,l2)
    }
    else {
        result = l2
        result!.next = mergeTwoLists(l1,l2!.next)
    }
    return result
}
