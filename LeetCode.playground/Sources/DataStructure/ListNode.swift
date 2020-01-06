import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public func format() -> [Int] {
        var result: [Int] = []
        var node: ListNode? = self
        while let nd = node {
            result.append(nd.val)
            node = nd.next
        }
        return result
    }
}
