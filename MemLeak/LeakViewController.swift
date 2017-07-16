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
        
        initUI(bgview: bgView)
        
        self.view = bgView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    lazy var trigger: TriggerView = {
        let inner  = TriggerView.init(frame: CGRect.init(x: 0, y: 100, width: 100, height: 100))
        
        return inner
    }()
    
    func initUI(bgview : UIView) {
        bgview.backgroundColor = ColorMethodho(hexValue: 0xb2b2b2)
        bgview.addSubview(trigger)
        
    }
    
    func initData() {
        trigger.tapBlock = {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
