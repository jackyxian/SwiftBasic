//
//  VC_ImageView.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/5.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

class VC_ImageView: UIViewController {

    @IBOutlet weak var imgPanda: UIImageView!
    
    
    @IBAction func playPanda(sender: AnyObject) {
        
        //1.先定义UIImage类型的数组
        var images : [UIImage] = []
        
        //2.1：最简单和SB写法，创建[UIImage]数组，然后添加图片，再放到UIImageView的animationImage里
//        images.append(UIImage(named: "panda1.png")!)
//        images.append(UIImage(named: "panda2.png")!)
//        images.append(UIImage(named: "panda3.png")!)
//        images.append(UIImage(named: "panda4.png")!)
//        images.append(UIImage(named: "panda5.png")!)
        
        //2.2：大神的写法，使用挂尾闭包和第1个参数的写法，动态加载
        images = (1...5).map{
            UIImage(named: "panda\($0).png")!
        }
        
        //3.为动画图片数组赋值
        imgPanda.animationImages = images
        //4.修改内容模式为显示图片的实际大小
        imgPanda.contentMode = .ScaleAspectFit
        //5.动画长度
        imgPanda.animationDuration = 1
        //6.开始播放
        imgPanda.startAnimating()
        
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
