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
        
        let colorPickerView = ColorPickerView(frame: self.view.bounds)
        
        
        
        
        
        // 2. Setup desired behaviour
        
        colorPickerView.setColorsPerRow(7)
        colorPickerView.colorCellPadding = 2.0
        
        colorPickerView.setHighlightSelection(true)
        colorPickerView.setSelectionBorderColor(UIColor.whiteColor())
        
        
        // 3. Set colors that should be available as an NSArray
        
        var array: NSMutableArray = NSMutableArray(array: [UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor(),UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor(),UIColor.cyanColor(), UIColor.darkGrayColor()])
        
        colorPickerView.setColors(array)
        
        
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

