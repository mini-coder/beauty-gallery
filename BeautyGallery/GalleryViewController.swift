//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by nancy zhang on 15/6/18.
//  Copyright (c) 2015年 loding. All rights reserved.
//


import UIKit
import Social

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    var imgName:String?;
    let dic=["fanbingbing":"范冰冰","libingbing":"李冰冰","wangfei":"王菲","yangmi":"杨幂","zhouxun":"周迅"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if (imgName != nil){
            imgView.image=UIImage(named: imgName!);
            navigationItem.title=dic[imgName!];
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ShareTapped(sender: AnyObject) {
        var controller=SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo);
        controller.setInitialText("ShareText");
        controller.addImage(imgView.image);
        self.presentViewController(controller, animated: true, completion: nil);
    }
   
    
    
}
