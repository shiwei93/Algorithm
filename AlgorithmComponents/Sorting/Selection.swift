//
//  Selection.swift
//  AlgorithmComponents
//
//  Created by shiwei on 2020/1/13.
//  Copyright © 2020 shiwei. All rights reserved.
//

import Foundation

/**
 First, find the smallest item in the array and exchange it with the first entry (itself if the first entry is alerady the smallest).
 Then, find the next smallest item and exchange it with the second entry.
 Continue in this way until the entire array is sorted.
 */

public class Selection<T: Comparable> {
    public static func sort(_ a: inout [T], by areInIncreasingOrder: ((T, T) -> Bool) = { $0 < $1 }) {
        for i in stride(from: 0, to: a.count, by: 1) {
            var min = i
            for j in stride(from: i + 1, to: a.count, by: 1) {
                if areInIncreasingOrder(a[j], a[min]) { min = j }
            }
            exchange(&a, i, min)
        }
    }
    
    public static func isSorted(_ a: [T], by areInIncreasingOrder: ((T, T) -> Bool) = { $0 < $1 }) -> Bool {
        for i in stride(from: 1, to: a.count, by: 1) {
            if areInIncreasingOrder(a[i], a[i - 1]) { return false }
        }
        return true
    }
    
    static func exchange(_ a: inout [T], _ i: Int, _ j: Int) {
        let tmp = a[i]
        a[i] = a[j]
        a[j] = tmp
    }
}
