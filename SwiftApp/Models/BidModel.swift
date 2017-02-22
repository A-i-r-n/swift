//
//  BidModel.swift
//  SwiftApp
//
//  Created by daiqile on 2017/2/20.
//  Copyright © 2017年 com.daiqile.daiqile. All rights reserved.
//

import UIKit

class BidModel: NSObject {

    var name = String()
    
    var payMoney = String()
    
    var apr = String()
    
    var limit_day = String()
    
    var allMoney = String()
    
    
    init(dict : [String : Any]) {
       
        super.init()
        
        setValuesForKeys(dict)
        
    }
    
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {

        
    }
    
    
}
