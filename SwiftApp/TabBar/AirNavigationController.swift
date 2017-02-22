//
//  AirNavigationController.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/14.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit

class AirNavigationController: UINavigationController,UIGestureRecognizerDelegate {

    var button = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.interactivePopGestureRecognizer?.delegate = self;
        
    }

    open  override func pushViewController(_ viewController: UIViewController, animated: Bool) {

        if self.childViewControllers.count >= 1 {
            
            button = UIButton(type: UIButtonType.custom)
            
            button.setImage(UIImage(named:"返回"), for: UIControlState.normal)
            
            button.sizeToFit();
            
            button.addTarget(self, action: #selector(back), for: UIControlEvents.touchUpInside)
            
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: button)
            
            viewController.hidesBottomBarWhenPushed = true;
        }
        
        super.pushViewController(viewController, animated: animated)
        
    }
    
    func back() -> Void {
        
        self.popViewController(animated: true)
        
    }
    
    open func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.childViewControllers.count > 1;
    }
    
}

