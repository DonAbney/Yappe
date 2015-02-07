//
//  ItemList.swift
//  Yappe
//
//  Created by Don Abney on 2/7/15.
//  Copyright (c) 2015 Don Abney. All rights reserved.
//

class ItemList {
    
    var items : Array<Item> = []
    
    func addNewItem(newItem : Item) {
        items.append(newItem)
    }
    
}
