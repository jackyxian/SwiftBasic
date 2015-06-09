//
//  VC_DatePicker.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/8.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

class VC_DatePicker: UIViewController {

    @IBOutlet weak var txtDate: UILabel!
    
    
    @IBAction func dataChange(sender: UIDatePicker) {
        //记得把时区选为中国....
        
        //创建日期格式化对象
        let format = NSDateFormatter()
        //日期格式化对象的格式化属性
        format.dateFormat = "yyyy年MM月dd日hh时mm分ss秒"
        //格式化日期
        let newString = format.stringFromDate(sender.date)
        
        txtDate.text = newString
        
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
