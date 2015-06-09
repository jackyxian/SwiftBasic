//
//  ViewController.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/5/13.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

//3.添加UIActionSheetDelegate 协议
class ViewController: UIViewController,UIActionSheetDelegate {

    @IBOutlet weak var lblTitle: UILabel!
    
    
    
    @IBAction func onPopActionView(sender: AnyObject) {
        //1.创建ActionSheet对象
        let asvShare = UIActionSheet(title: nil, delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "分享到微博")
        //2.在本视图中打开as
        asvShare.showInView(self.view)
        
    }
    
    //4.实现actionSheet回调方法
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        lblTitle.text = actionSheet.buttonTitleAtIndex(buttonIndex)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

