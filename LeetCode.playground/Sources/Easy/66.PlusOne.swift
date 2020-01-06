import Foundation

/// https://leetcode-cn.com/problems/plus-one/
public func plusOne(_ digits: [Int]) -> [Int] {
    var result = digits
    for i in stride(from: digits.count - 1, through: 0, by: -1) {
        let num = digits[i]
        if num + 1 < 10 {
            result[i] = num + 1
            return result
        } else {
            result[i] = 0
        }
    }
    return [1] + result
}
