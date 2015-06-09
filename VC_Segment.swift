//
//  VC_Segment.swift
//  SwiftBasic
//
//  Created by 冼树华 on 15/6/8.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

import UIKit

class VC_Segment: UIViewController {
    @IBOutlet weak var txtResult: UILabel!
    @IBAction func dataChange(sender: UISegmentedControl) {
        txtResult.text = sender.titleForSegmentAtIndex(sender.selectedSegmentIndex)
        
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
