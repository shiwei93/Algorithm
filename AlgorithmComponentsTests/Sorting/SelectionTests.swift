//
//  SelectionTests.swift
//  AlgorithmComponentsTests
//
//  Created by shiwei on 2020/1/13.
//  Copyright © 2020 shiwei. All rights reserved.
//

import XCTest

class SelectionTests: XCTestCase {
    func testSelectionSorting() {
        var a = ["S", "O", "R", "T", "E", "X", "A", "M", "P", "L", "E"]
        Selection<String>.sort(&a)
        XCTAssert(Selection<String>.isSorted(a))
    }
}
