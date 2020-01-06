import Foundation

/// https://leetcode-cn.com/problems/two-sum/
public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for i in stride(from: 0, to: nums.count, by: 1) {
        if let rest = dict[nums[i]] {
            return [rest, i]
        } else {
            dict[target - nums[i]] = i
        }
    }
    return []
}
