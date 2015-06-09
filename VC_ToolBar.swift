//
//  VC_ToolBar.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/5.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

class VC_ToolBar: UIViewController {

    @IBOutlet weak var tbMain: UIToolbar!
    
    //1.创建垃圾回收按钮和按钮事件注册
    var trashItem:UIBarButtonItem{
        //使用了系统样式图标, 目标是本按钮，通过action注册时间，使用事件名称加 : 号
        return UIBarButtonItem(barButtonSystemItem: .Trash, target: self, action: "trashClick:")
    }   //每个事件都必须有相关的目标对象
    func trashClick(sender:UIBarButtonItem){
        println("您点击了【回收】按钮")
    }
    
    //2.创建空格按钮
    var spaceItem:UIBarButtonItem{
        return UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: self, action: nil)
    }
    
    //3.创建分享按钮和按钮注册事件
    var shareItem:UIBarButtonItem{
        return UIBarButtonItem(barButtonSystemItem: .Reply, target: self, action: "shareClick:")
    }
    func shareClick(sender:UIBarButtonItem){
        println("您点击了【分享】按钮")
    }

    
    
    //创建配置工具条方法
    func configToolBar(){
        //获取工具条数组
        let toolBarImtes = [trashItem,spaceItem,shareItem]
        //把工具条数组添加到工具栏
        tbMain.setItems(toolBarImtes, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configToolBar()

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
