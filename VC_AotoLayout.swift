//
//  VC_AotoLayout.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/7.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

//1.在视图上添加相关组件的代理，然后在代码上实现这2个代理
class VC_AotoLayout: UIViewController, UIWebViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var TxtUrl: UITextField!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    
    
    
    
    //webView开始加载
    func webViewDidStartLoad(webView: UIWebView) {
        //设置菊花可见（左上角）
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        //菊花开始
        loading.startAnimating()
    }
    
    //webView完成加载
    func webViewDidFinishLoad(webView: UIWebView) {
        //设置菊花隐藏（左上角）
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        //菊花停止
        loading.stopAnimating()
    }
    
    //设置加载URL的方法
    func loadUrl(webUrl:String, webView:UIWebView){
        //判断有没有打http://
        let url = NSURL(string: webUrl.hasPrefix("http://") ? webUrl : "http://" + webUrl)
        let requestUrl = NSURLRequest(URL: url!)
        webView.loadRequest(requestUrl)
    }

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        loadUrl(textField.text, webView: webView)
        
        //解除第一个反应者（其实就是接触焦点.....），键盘消失
        TxtUrl.resignFirstResponder()
        
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
