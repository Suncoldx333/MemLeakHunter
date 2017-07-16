//
//  ViewController.swift
//  MemLeak
//
//  Created by WangZhaoyun on 2017/7/16.
//  Copyright © 2017年 WangZhaoyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        
        let bgView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
        bgView.backgroundColor = ColorMethodho(hexValue: 0xffffff)
        
        let tapEvent = UITapGestureRecognizer.init(target: self, action: #selector(viewTap(sender:)))
        bgView.addGestureRecognizer(tapEvent)
        
        self.view = bgView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewTap(sender : UITapGestureRecognizer) {
        
        let leakVC = LeakViewController.self()
        
        self.navigationController?.pushViewController(leakVC, animated: true)
        
    }
}

