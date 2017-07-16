//
//  LeakViewController.swift
//  MemLeak
//
//  Created by WangZhaoyun on 2017/7/16.
//  Copyright © 2017年 WangZhaoyun. All rights reserved.
//

import UIKit

class LeakViewController: UIViewController {

    override func loadView() {
        
        let bgView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
        
        initUI(view: bgView)
        
        self.view = bgView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initUI(view : UIView) {
        view.backgroundColor = ColorMethodho(hexValue: 0x00c18b).withAlphaComponent(0.2)
        
        
    }

}
