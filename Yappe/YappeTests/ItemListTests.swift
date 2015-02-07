//
//  ItemListTests.swift
//  Yappe
//
//  Created by Don Abney on 2/7/15.
//  Copyright (c) 2015 Don Abney. All rights reserved.
//

import UIKit
import XCTest

class ItemListTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddNewItemCanAddItem() {
        var itemList : ItemList = ItemList()
        var testItem : Item = Item(barcodeValue: "test")
        
        itemList.addNewItem(testItem)
        
        XCTAssert(testItem === itemList.items["test"])
        
    }
    
    func testRemoveItemRemovesCorrectItemByBarcodeValue() {
        var itemList : ItemList = ItemList()
        var testItemOne : Item = Item(barcodeValue: "testOne")
        var testItemTwo : Item = Item(barcodeValue: "testTwo")
        itemList.addNewItem(testItemOne)
        itemList.addNewItem(testItemTwo)
        XCTAssert(itemList.items.count == 2)
        
        itemList.removeItem(testItemOne)
        
        XCTAssert(itemList.items.count == 1)
        XCTAssertNil(itemList.items["testOne"])
        XCTAssert(testItemTwo === itemList.items[testItemTwo.barcodeValue])
    }

//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock() {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
