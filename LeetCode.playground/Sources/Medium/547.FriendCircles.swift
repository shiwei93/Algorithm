import Foundation

/// https://leetcode-cn.com/problems/friend-circles/
/// 图!
public func findCircleNum(_ M: [[Int]]) -> Int {
    var ans = 0
    var rest = Array(0..<M.count)
    while !rest.isEmpty {
        for i in rest {
            for j in rest {
                if i == j {
                    continue
                } else {
                    rest.remove(at: 0)
                    if M[i][j] == 0 {
                        ans += 1
                        break
                    }
                }
            }
        }
    }
    return ans
}
