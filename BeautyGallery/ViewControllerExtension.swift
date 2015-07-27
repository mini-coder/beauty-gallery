//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by nancy zhang on 15/6/18.
//  Copyright (c) 2015年 loding. All rights reserved.
//

import UIKit
//ViewController 扩展类
extension ViewController:UIPickerViewDataSource{
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1;
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count;
    }
}

extension ViewController:UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return beauties[row];
    
    }
}
