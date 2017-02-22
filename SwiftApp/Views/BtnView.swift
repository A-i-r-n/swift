//
//  BtnView.swift
//  SwiftApp
//
//  Created by daiqile on 2017/2/21.
//  Copyright © 2017年 com.daiqile.daiqile. All rights reserved.
//

import UIKit

let ScreenWidth : CGFloat = UIScreen.main.bounds.size.width

let ScreenHeight : CGFloat = UIScreen.main.bounds.size.height

class BtnView: UIView {

    //let topSpace : CGFloat = 0.0
    
    let leftSpace : CGFloat = 0.0
    
    let space : CGFloat = 0.0
    
    init(frame : CGRect, nubInLine : NSInteger, lineNub : NSInteger, titleArray : [String], imgArray : [String]){
        
        super.init(frame: frame)
        
        let num = nubInLine * lineNub
        
        //计算按钮宽度
        //CGFloat width = (Width - 2 *leftSpace - (nubInLine - 1)*space)/(float)nubInLine;
        
        let width :CGFloat = (ScreenWidth - 2*leftSpace - (CGFloat)(nubInLine - 1)*space)/CGFloat(nubInLine)
        
        for i in 0..<num {
            
            print(i)
            
            let button = UIButton.init(frame: CGRect(x: leftSpace + CGFloat(i % nubInLine) * (width + space), y: CGFloat(i/nubInLine) * (width + space), width: width, height: width))
            
            button.tag = 10 + i
            
            button.backgroundColor = UIColor.white
            
            button.setTitleColor(UIColor.black, for: .normal)
            
            button.layer.borderWidth = 0.25
            
            button.layer.borderColor = UIColor.lightGray.cgColor
            
            button.setImage(UIImage.init(named: imgArray[i]), for: .normal)
            
            button.setTitle(titleArray[i], for: .normal)
            
            button .verticalImageAndTitle(spacing: 8)
            
            self.addSubview(button)
            
        }
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
