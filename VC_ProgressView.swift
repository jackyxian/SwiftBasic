//
//  VC_ProgressView.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/5.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

class VC_ProgressView: UIViewController {

    //1.创建进度条引用
    @IBOutlet weak var prgDownload: UIProgressView!
    //2.创建操作队列对象
    let operationQueue = NSOperationQueue()
    //3.创建属性完成度的监视器
    var 完成度:Int = 0 {
        didSet(oldValue){
            let 进度比 = Float(完成度) / Float(100)
            let 是否动画 = (oldValue != 0)
            
            prgDownload.setProgress(进度比, animated: 是否动画)
        }
    }
    
    
    //3.模拟一个下载进度的操作
    func simDownloadProgress(){
        
        for _ in 0...100{
            
            //4.添加相关操作闭包到队列
            operationQueue.addOperationWithBlock{
                
                //5.先随机延迟几秒，模拟其他程序功能性操作
                sleep(arc4random_uniform(10))
                
                //6.主操作队列里添加相关操作
                NSOperationQueue.mainQueue().addOperationWithBlock{
                    self.完成度++
                    return
                }
                
                
            }
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simDownloadProgress()

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
