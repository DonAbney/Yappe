//
//  ScannerController.swift
//  Yappe
//
//  Created by Don Abney on 2/6/15.
//  Copyright (c) 2015 Don Abney. All rights reserved.
//

import UIKit
import RSBarcodes

class ScannerController: RSCodeReaderViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.focusMarkLayer.strokeColor = UIColor.redColor().CGColor
        
        self.cornersLayer.strokeColor = UIColor.yellowColor().CGColor
        
        self.tapHandler = { point in
            //println(point)
        }
        
        self.barcodesHandler = { barcodes in
            for barcode in barcodes {
                println(barcode.stringValue)
            }
        }
        
        setCameraLayerToBottom()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var firstView: ViewController = segue.destinationViewController as ViewController
    }
    
    func setCameraLayerToBottom() {
        for subview in self.view.subviews {
            self.view.bringSubviewToFront(subview as UIView)
        }
    }
    
    
}