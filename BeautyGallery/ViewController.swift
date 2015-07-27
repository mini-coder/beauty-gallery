//
//  ViewController.swift
//  BeautyGallery
//
//  Created by nancy zhang on 15/6/17.
//  Copyright (c) 2015年 loding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties=["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource=self;
        beautyPicker.delegate=self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dic=[0:"fanbingbing",1:"libingbing",2:"wangfei",3:"yangmi",4:"zhouxun"];
        
        
        if(segue.identifier == "GoToGallery"){
            let index=beautyPicker.selectedRowInComponent(0);
            
            var vc=segue.destinationViewController as! GalleryViewController;
            vc.imgName = dic[index];
        }
    }
    
    @IBAction func Close(senger:UIStoryboardSegue){
    
    }
       
      
}

