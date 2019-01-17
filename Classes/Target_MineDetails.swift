//
//  GATarget_MineDetails.swift
//  GAMineDetailsViewController
//
//  Created by 侯佳男 on 2019/1/17.
//  Copyright © 2019年 侯佳男. All rights reserved.
//

import UIKit

@objc class Target_MineDetails: NSObject {
    
    @objc func Action_Extension_GAMineDetailsViewController(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("success")
        }
        
        let vc = GAMineDetailsViewController()
        return vc
    }
    
    @objc func Action_Category_GAMineDetailsViewController(_ params:NSDictionary) -> UIViewController {
        
        if let block = params["callback"] {
            
            typealias CallbackType = @convention(block) (NSString) -> Void
            let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())
            let callback = unsafeBitCast(blockPtr, to: CallbackType.self)
            
            callback("success")
        }
        
        let vc = GAMineDetailsViewController()
        return vc
    }
}

