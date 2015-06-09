//
//  VC_WebView.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/6.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

class VC_WebView: UIViewController {

    @IBOutlet weak var wvBaidu: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //1.创建url连接对象
        let url = NSURL(string: "http://www.497.cn")
        //2.创建url请求对象
        let request = NSURLRequest(URL: url!)
        //3.webview上使用url请求对象
        wvBaidu.loadRequest(request)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
