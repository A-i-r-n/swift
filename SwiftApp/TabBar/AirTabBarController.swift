//
//  AirTabBarController.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/14.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit
import Foundation

class AirTabBarController: UITabBarController {

    let MAINCOLOR = UIColor(colorLiteralRed: 20/255.0, green:20/255.0 , blue:30/255.0 , alpha:0.3)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupChildVCs()
        
        self.setupItem()
        
    }

    
    func setupChildVCs() -> Void {
     
        self .setupChildVC(vc: MainViewController(), title: "首页", image: "main", selectImage: "main_s")
        
         self .setupChildVC(vc: StoreViewController(), title: "商家", image: "store", selectImage: "store_s")
        
         self .setupChildVC(vc: CartViewController(), title: "购物车", image: "cart", selectImage: "cart_s")
        
         self .setupChildVC(vc: MineViewController(), title: "我的", image: "mine", selectImage: "mine_s")
        
        
    }
    
    func setupItem() -> Void {
        
//        //设置tabBar背景色
//        (UITabBar.appearance()).barTintColor = MAINCOLOR
        
        //item未选中字体,颜色
        var normalAttrs = [String : Any]()
        
        //item选中子体,颜色
        var selectAttrs = [String : Any]()
        
        //UIControlStateNormal状态下的文字属性
        normalAttrs[NSFontAttributeName] = UIFont.systemFont(ofSize: 11);
    
        normalAttrs[NSForegroundColorAttributeName] = UIColor.black
        
        //UIControlStateSelected状态下的文字属性      
        selectAttrs[NSForegroundColorAttributeName] = UIColor.red;
        
        selectAttrs[NSFontAttributeName] = UIFont.systemFont(ofSize: 15)
        
        
        let item = UITabBarItem.appearance()
        
        item.setTitleTextAttributes(normalAttrs, for: .normal)
        
        item.setTitleTextAttributes(selectAttrs, for: .selected)
        
    }
    
    func setupChildVC(vc: UIViewController,title: String,image: String , selectImage: String) -> Void {
       
        

        let nav = AirNavigationController.init(rootViewController: vc)
        
        self.addChildViewController(nav)
        
        nav.tabBarItem.title = title
        
        nav.tabBarItem.image = UIImage(named: image)
        
        nav.tabBarItem.selectedImage = UIImage(named: selectImage)
        
    }

    
    
}
