//
//  AirButton.swift
//  SwiftApp
//
//  Created by daiqile on 2017/2/21.
//  Copyright © 2017年 com.daiqile.daiqile. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func verticalImageAndTitle(spacing : CGFloat) -> Void {
        
        var text : NSString = ""
        
        let imageSize : CGSize = (self.imageView?.frame.size)!
        
        var titleSize : CGSize = (self.titleLabel?.frame.size)!

        if self.titleLabel?.text != nil{
            text = ((self.titleLabel?.text)! as NSString)
        }
        
        let textSize = text.size(attributes: [NSFontAttributeName : (self.titleLabel?.font)!])
        
        let frameSize : CGSize = CGSize.init(width: CGFloat(ceilf(Float(textSize.width))), height: CGFloat(ceilf(Float(textSize.height))))
        
        if titleSize.width + 0.5 < frameSize.width {
            
            titleSize.width = frameSize.width
            
        }
        
        let totalHeight : CGFloat = imageSize.height + titleSize.height + spacing
        
        self.imageEdgeInsets = UIEdgeInsetsMake(-(totalHeight - imageSize.height), 0.0, 0.0, -titleSize.width)
        
        self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width, -(totalHeight - titleSize.height), 0);
    }
    
}
