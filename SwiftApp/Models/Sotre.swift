//
//  Sotre.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/15.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit

class Sotre: NSObject {
    
    var img = String() //图片
    
    var name = String() //店名
    
    var exepain = String() //说明
    
    var area = String() //距离
    
    
    static func parseWithDictionary(dict: [String : Any]) -> Sotre {
        
        let custom = Sotre()
        
        custom.img = dict["img"] as! String
        
        custom.name = dict["name"] as! String
        
        custom.exepain = dict["exepain"] as! String
        
        custom.area = dict["area"] as! String
        
        return custom
        
    }
    
    
    
    
    
    
    

}
