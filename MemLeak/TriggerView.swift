//
//  TriggerView.swift
//  MemLeak
//
//  Created by WangZhaoyun on 2017/7/16.
//  Copyright © 2017年 WangZhaoyun. All rights reserved.
//

import UIKit

class TriggerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var tapBlock : swiftNoPatameterBlock!
    
    func initUI() {
        self.backgroundColor = ColorMethodho(hexValue: 0x00c18b)
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapEvent(sender:)))
        self.addGestureRecognizer(tap)
        
    }
    
    func tapEvent(sender : UITapGestureRecognizer) {
        
        tapBlock()
        
    }
    
}
