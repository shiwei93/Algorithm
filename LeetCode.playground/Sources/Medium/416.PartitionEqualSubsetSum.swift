import Foundation

/// https://leetcode-cn.com/problems/partition-equal-subset-sum/
public func canPartition(_ nums: [Int]) -> Bool {
    // 1. 和为奇数
    let total = nums.reduce(0, +)
    if (total & 1) == 1 {
        return false
    }
    // 2. 排序
    let nums = nums.sorted()
    // 3. 二分
    var mid = nums.count / 2
    while mid >= 0 && mid < nums.count {
        let head = nums[0..<mid].reduce(0, +)
        let tail = nums[mid..<nums.count].reduce(0, +)
        if head == tail {
            return true
        } else {
            mid += (head < tail ? 1 : -1)
        }
    }
    return false
}
