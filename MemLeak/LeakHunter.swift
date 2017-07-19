//
//  LeakHunter.swift
//  MemLeak
//
//  Created by WangZhaoyun on 2017/7/16.
//  Copyright © 2017年 WangZhaoyun. All rights reserved.
//

import UIKit

extension NSObject{
    
}

extension UIViewController{
    open override static func initialize() {
        struct Static{
            static var token = NSUUID().uuidString
        }
        
        if self != UIViewController.self {
            return
        }
        
        DispatchQueue.once(token : Static.token){
            let oriSelector = #selector(UIViewController.viewWillAppear(_:))
            let swiSelector = #selector(UIViewController.xl_viewWillAppewar(_:))
            
            let oriMethod = class_getInstanceMethod(self, oriSelector)
            let swiMethod = class_getInstanceMethod(self, swiSelector)
            
            let didAddMethod : Bool = class_addMethod(self,
                                                      oriSelector,
                                                      method_getImplementation(swiMethod),
                                                      method_getTypeEncoding(swiMethod))
            
            if didAddMethod {
                class_replaceMethod(self,
                                    swiSelector,
                                    method_getImplementation(oriMethod),
                                    method_getTypeEncoding(oriMethod))
            }else{
                method_exchangeImplementations(oriMethod,
                                               swiMethod)
            }
            
        }
    }
    
    func xl_viewWillAppewar(_ animated : Bool) {
        self.xl_viewWillAppewar(animated)
        print("swizzle will appear")
    }
}

extension DispatchQueue{
    private static var onceTracker = [String]()
    
    open class func once(token : String,block:() -> Void){
        objc_sync_enter(self)
        defer {
            objc_sync_exit(self)
        }
        if onceTracker.contains(token) {
            return
        }
        onceTracker.append(token)
        block()
    }
}

class LeakHunter: NSObject {
    
}
