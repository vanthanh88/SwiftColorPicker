//
//  ViewController.swift
//  ColorPickerView
//
//  Created by tiencoipro on 3/17/15.
//  Copyright (c) 2015 tiencoipro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var colorPickerView = ColorPickerView()
        
        
        
        
        
        // 2. Setup desired behaviour
        
        colorPickerView.colorsPerRow = 4
        colorPickerView.colorCellPadding = 2.0
        
        colorPickerView.highlightSelection = true
        colorPickerView.selectionBorderColor = UIColor.whiteColor()
        
        
        // 3. Set colors that should be available as an NSArray
        
        colorPickerView.colors = [UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.redColor(), UIColor.whiteColor(), UIColor.blackColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor()]
        
        
        // 4 Do some styling
        
        colorPickerView.backgroundColor = UIColor.blackColor()
        
        
        // 5. add to view hierachy
        
        self.view.addSubview(colorPickerView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

