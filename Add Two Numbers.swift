//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
    self.val = val
    self.next = nil
    }
 }

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    var l1 = l1
    var l2 = l2
    var result = ListNode(0)
    let head = result
    var carry = 0
    
    while l1 != nil || l2 != nil || carry != 0 {
        let v1 = l1?.val ?? 0
        let v2 = l2?.val ?? 0
        let sum = (carry + v1 + v2) % 10
        result.next = ListNode(sum)
        carry = (carry + v1 + v2) / 10
        result = result.next!
        l1 = l1?.next ?? nil
        l2 = l2?.next ?? nil
    }
    return head.next
}

