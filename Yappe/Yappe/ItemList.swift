//
//  ItemList.swift
//  Yappe
//
//  Created by Don Abney on 2/7/15.
//  Copyright (c) 2015 Don Abney. All rights reserved.
//

class ItemList {
    
    var listIdentifier = ""
    var items = [String : Item]()
    
    init(listIdentifier : String) {
        self.listIdentifier = listIdentifier
    }
    
    func addNewItem(newItem : Item) {
        items[newItem.barcodeValue] = newItem
    }
    
    func removeItem(itemToRemove : Item) {
        items.removeValueForKey(itemToRemove.barcodeValue)
    }
    
}
