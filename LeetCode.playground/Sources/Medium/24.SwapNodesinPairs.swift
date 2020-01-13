import Foundation

/// https://leetcode-cn.com/problems/swap-nodes-in-pairs/
public func swapPairs(_ head: ListNode?) -> ListNode? {
    var pre: ListNode? = nil
    var mid = head
    var next = head?.next
    while mid != nil {
        // 交换节点
        mid?.next = next?.next
        mid = next
        next = mid
        // 
        if pre != nil {
            pre?.next = next
        }
    }
//    var slow = head
//    while quick?.next?.next != nil {
//        let tmp = quick
//        quick = quick?.next
//        quick
//        quick = quick?.next
//    }
    return head
}
