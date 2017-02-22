//
//  RegistViewController.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/14.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit

class RegistViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    //注册
    @IBAction func regist(_ sender: Any)
    {
        
    }
    
    //去登录
    @IBAction func goLogin(_ sender: Any)
    {
        let login = LoginViewController()
        self.navigationController?.pushViewController(login, animated: true)
    }
  
}
