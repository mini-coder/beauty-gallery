//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by nancy zhang on 15/7/24.
//  Copyright (c) 2015年 loding. All rights reserved.
//

import UIKit
import Social

class KoreamViewController: UIViewController {

    @IBOutlet weak var beautyImg: UIImageView!
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btn_facebook_Click(sender: AnyObject) {
        var controller=SLComposeViewController(forServiceType: SLServiceTypeFacebook);
        controller.setInitialText("制服诱惑哦");
        controller.addImage(beautyImg.image);
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    @IBAction func btn_twitter_Click(sender: AnyObject) {
        var controller=SLComposeViewController(forServiceType: SLServiceTypeTwitter);
        controller.setInitialText("湿身诱惑");
        controller.addImage(beautyImg.image);
        self.presentViewController(controller, animated: true, completion: nil);
    }
    @IBAction func btn_sina_Click(sender: AnyObject) {
        var controller=SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo);
        controller.setInitialText("苍老师日常");
        controller.addImage(beautyImg.image);
        self.presentViewController(controller, animated: true, completion: nil);
        
    }



}
