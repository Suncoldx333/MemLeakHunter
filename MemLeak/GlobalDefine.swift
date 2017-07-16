//
//  GlobalDefine.swift
//  MemLeak
//
//  Created by WangZhaoyun on 2017/7/16.
//  Copyright © 2017年 WangZhaoyun. All rights reserved.
//

import UIKit

let ScreenWidth : CGFloat = UIScreen .main .bounds .size .width
let ScreenHeight : CGFloat = UIScreen .main .bounds .size .height
let ScreenHeightUnit :CGFloat = UIScreen .main .bounds .size .height * 1.000 / 667.000
let ScreenWidthUnit :CGFloat = UIScreen .main .bounds .size .width * 1.000 / 375.000

typealias swiftNoPatameterBlock = () -> Void

//颜色，Eg:ColorMethodho(0x00c18b)
func ColorMethodho(hexValue : Int) -> UIColor {
    let red   = ((hexValue & 0xFF0000) >> 16)
    let green = ((hexValue & 0xFF00) >> 8)
    let blue  = (hexValue & 0xFF)
    
    return UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: CGFloat(1))
}

class GlobalDefine: NSObject {

}
