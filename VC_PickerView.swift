//
//  VC_PickerView.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/5.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

class VC_PickerView: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    //0.最重要的是为选择器的Outlets的dataSource和delegate属性拉到相关的视图里！

    @IBOutlet weak var pickerAV: UIPickerView!
    
    @IBOutlet weak var lbnName: UILabel!
    @IBOutlet weak var lblBust: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    
    //虚拟数据
    let gril = ["上原亚衣","尾上若叶","蕾","宇都宫紫苑","希岛爱理","逢田美波","橘梨纱","吉泽明步","京香JULIA","白石茉莉奈"]
    let bust = ["33E","38F","34D","48J","38C","38E","38F","38E","44J","40G"]
    let age = ["23","23","28","21","27","20","22","31","28","29"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //1.有多少组件选择器视图
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    //2.每个选择器组件多少行
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gril.count
    }
    
    //3.每列的标题是什么
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        //判断是那个组件，然后为每一行赋值
        switch component{
            case 0 : return gril[row]
            case 1 : return bust[row]
            default: return age[row]
        }
    }
    
    //4.设置组件宽度
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        //判断是那个组件，然后为每一行赋值
        switch component{
            case 0 : return 150
            case 1 : return 75
            default: return 75
        }

    }
    
    
    //5.根据选中行设置值
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component{
            case 0 : lbnName.text = gril[row]
            case 1 : lblBust.text = bust[row]
            default: lblAge.text = age[row]
        }
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
