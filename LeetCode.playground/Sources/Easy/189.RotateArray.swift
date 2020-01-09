import Foundation

/// https://leetcode-cn.com/problems/rotate-array/
public func rotate(_ nums: inout [Int], _ k: Int) {
    // 暴力法
    if k == 0 { return }
    for i in stride(from: 0, to: nums.count - 1, by: 1) {
        // 交换下标 i 与 nums.count - 1 的两个数
        nums[i] = nums[i] ^ nums[nums.count - 1]
        nums[nums.count - 1] = nums[i] ^ nums[nums.count - 1]
        nums[i] = nums[i] ^ nums[nums.count - 1]
    }
    rotate(&nums, k - 1)
}
