//
//  ColorPickerView.swift
//  ColorPickerView
//
//  Created by tiencoipro on 3/17/15.
//  Copyright (c) 2015 tiencoipro. All rights reserved.
//

import UIKit


let kDefaultCellPadding:CGFloat! = 2.0
let kColorCellIdentifier: NSString! = "kColorCellIdentifier"


@objc protocol ColorPickerViewDelegate{
    
    func colorPickerView(colorPickerView: ColorPickerView!, didSelectColor: UIColor!)
   
}

class ColorPickerView: UIView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    /// The collection view displaying the colors
    var colorView: UICollectionView!
    
    var delegate: ColorPickerViewDelegate?
    
    // the current selected color
    var selectedColor: UIColor?
    
    //Public Varible
    ///Colors array
    var colors: NSMutableArray!{
        get{
            return self.colors
        }
        set(newColors){
            //set new colors
            self.colors = newColors
            //and reset color picker
            self.resetColorPicker()
        }
    }
    
    ///Layouting
    var colorsPerRow: NSInteger{
        get{
            return self.colorsPerRow
        }
        set(newColorsPerRow){
            
            if newColorsPerRow < 1{
                self.colorsPerRow = 1
                self.resetColorPicker()
                return
            }
            
            self.colorsPerRow = newColorsPerRow
            self.resetColorPicker()
            
        }
    }
    var colorCellPadding: CGFloat{
        get{
            return self.colorCellPadding
        }
        set(newColorCellPadding){
            self.colorCellPadding = newColorCellPadding
            if self.colorCellPadding < 0.0{
                self.colorCellPadding = 0.0
            }
            
            self.resetColorPicker()
        }
    }
    //enabled highlight boder if true
    var highlightSelection: Bool!{
        get{
            return self.highlightSelection
        }
        set(newHighlightSelection){
            self.highlightSelection = newHighlightSelection
            self.resetColorPicker()
        }
    }
    
    var selectionBorderColor: UIColor?{
        get{
            return self.selectionBorderColor
        }
        set(newSelectionBorderColor){
            self.selectionBorderColor = newSelectionBorderColor
            self.resetColorPicker()
        }
    }
    
    
    //MARK: Initial Methods
    override init() {
        super.init()
        self.doInitialization()
        
    }
    ///Use when init from nib
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.doInitialization()
        
    }
    ///init with frame
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.doInitialization()
    }
    //MARK: Layout subView
    override func layoutSubviews() {
        
    }
    
    //MARK: CollectionView Datasource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return colors.count
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        var cell: UICollectionViewCell?
        //FIXME: FIX TOMORROW
        cell = collectionView.dequeueReusableCellWithReuseIdentifier(kColorCellIdentifier, forIndexPath:indexPath) as? UICollectionViewCell
        
        self.setColorCell(cell, selected: cell!.selected)
        
        cell?.backgroundColor = self.colors.objectAtIndex(indexPath.row) as? UIColor
        
        
        return cell!
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int{
        return 1
    }
    
    
    //MARK: Delegate of UIcollectionView
    
    func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath){
        
        var cell: UICollectionViewCell = self.colorView.cellForItemAtIndexPath(indexPath)!;
        cell.alpha = 0.5;
    }
    func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath){
        var cell: UICollectionViewCell = self.colorView.cellForItemAtIndexPath(indexPath)!;
        cell.alpha = 1.0;
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        
        self.setColorCell(collectionView.cellForItemAtIndexPath(indexPath), selected:true)
        
        self.selectedColor = self.colors.objectAtIndex(indexPath.row) as? UIColor
        
        //FIXME: Fix tomorrow
        self.delegate?.colorPickerView(self, didSelectColor: self.colors.objectAtIndex(indexPath.row) as UIColor)
    }
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath){
        
    }
    
    
    //MARK: Private Method
     /// Initializes the collection view and default values
    func doInitialization(){
        // Set default values
        
        self.colorsPerRow = 4;
        self.colorCellPadding = kDefaultCellPadding;
        self.highlightSelection = true;
        self.selectionBorderColor = UIColor.whiteColor();
        
        
        
        // Collection view setup
        
        self.colorView = UICollectionView(frame: CGRectZero, collectionViewLayout: UICollectionViewFlowLayout())
        self.colorView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier:kColorCellIdentifier)
        self.colorView.scrollEnabled = true
        self.colorView.alwaysBounceVertical = true
        self.colorView.backgroundColor = UIColor.clearColor()
        
        self.colorView.contentInset = UIEdgeInsetsMake(self.colorCellPadding, 0, self.colorCellPadding, 0);
        
        self.colorView.delegate = self
        self.colorView.dataSource = self
        
        self.addSubview(self.colorView)
    }
    /// marks a cell as selected according to "selection", does nothing is selection highlighting is disabled
    func setColorCell(cell:UICollectionViewCell!, selected: Bool){
        
        if (!selected || !self.highlightSelection) {
            cell.contentView.layer.borderColor = nil;
            cell.contentView.layer.borderWidth = 0;
        }else {
            cell.contentView.layer.borderColor = self.selectionBorderColor?.CGColor;
            cell.contentView.layer.borderWidth = 5;
        }
        
    }
    /// reloads data of collection view and sets content offset to zero
    func resetColorPicker(){
        self.colorView.setContentOffset(CGPointMake(0, 0), animated: true)
        self.colorView.reloadData();
    }
    
    
    //MARK: layout delegate
    //FIXME: ....
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize{
//        let itemsPerRow: NSInteger = self.colorsPerRow
//        //FIXME: Fix tomorrow NSInteger(self.colorCellPadding)
//        var spaceMultiplier:NSInteger = (itemsPerRow - 1) * NSInteger(self.colorCellPadding)
//        
//        if spaceMultiplier <= 0 {
//            spaceMultiplier = 0
//        }
//        
//        // calculate size for 3 thumbs per line
//        let size = CGFloat(collectionView.bounds.size.width - spaceMultiplier)/itemsPerRow as CGFloat
//        
//        return CGSizeMake(size, size)
//    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets{
        return UIEdgeInsetsMake(0,0,0,0)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat{
        return self.colorCellPadding
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat{
        return self.colorCellPadding
    }

}
