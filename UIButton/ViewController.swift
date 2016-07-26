//
//  ViewController.swift
//  UIButton
//
//  Created by 马锦航 on 16/7/26.
//  Copyright © 2016年 JHMang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    let exampleButton: UIButton = {
        var button = UIButton()
        button.frame = CGRectMake(100, 100, 200, 40)
        button.backgroundColor = UIColor.brownColor()
        button.setTitle("There is Button", forState: UIControlState.Normal)
//        button.addTarget(self, action: Selector(exampleButtonAction(button)), forControlEvents: UIControlEvents.TouchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //  button作为参数传递的时候，参数列表 "_:"表示
        exampleButton.addTarget(self, action: #selector(exampleButtonAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        //  貌似是2.2之前
//        exampleButton.addTarget(self, action: Selector("exampleButtonAction:"), forControlEvents: UIControlEvents.TouchUpInside)
        
        view.addSubview(exampleButton)
        
    }
    
    
    //Mark: - target
    
    //Mark: exampleButtonAction
    func exampleButtonAction(sender: UIButton) -> Void {
        
        print("click")
        
    }
    

}

