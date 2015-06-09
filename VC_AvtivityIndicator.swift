//
//  VC_AvtivityIndicator.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/5.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

//5.添加UIAlertViewDelegate协议
class VC_AvtivityIndicator: UIViewController,UIAlertViewDelegate {

    //1.创建菊花引用
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    //2.菊花开始
    @IBAction func StartLoading(sender: AnyObject) {
        loading.startAnimating()
    }
    
    //3.菊花停止
    @IBAction func StopLoading(sender: AnyObject) {
        //必须设置菊花的Hides When stopped属性为true才会在菊花停止后隐藏
        //4.添加警告框对象
        let stopLoadingConfirm = UIAlertView(title: "警告", message: "是否停止菊花？", delegate: self, cancelButtonTitle: "否", otherButtonTitles: "是")
        stopLoadingConfirm.show()
        
        //loading.stopAnimating()
    }
    
    //6.添加协议实现的回调方法
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        //println("点击的是：\(buttonIndex)")
        if(buttonIndex == 1){
            loading.stopAnimating()
        }
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
