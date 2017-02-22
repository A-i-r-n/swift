//
//  MainViewController.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/14.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit
import AFNetworking

typealias Number = (_ num1: Int) -> (Int)

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let BannerCell = "BannerTableViewCell"
    let NoticeTableViewCell = "NoticeTableViewCell"
    let AdvTableViewCell = "AdvTableViewCell"
    let ExperienceTableViewCell = "ExperienceTableViewCell"
    let SafetyTableViewCell = "SafetyTableViewCell"
    var bannerArray = ["banner-1","banner-2","banner-3","banner-4"]
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.navigationItem.title = "首页"
        registerCell()
        setupData()
        

        
        
    }

   
    
    
    
}

extension MainViewController
{
    func registerCell() -> Void {
        
        tableView.register(UINib(nibName: BannerCell, bundle: nil), forCellReuseIdentifier: BannerCell)
        
//       tableView.register(BannerTableViewCell.self, forCellReuseIdentifier: BannerCell)
        
        tableView.register(UINib(nibName: NoticeTableViewCell, bundle: nil), forCellReuseIdentifier: NoticeTableViewCell)
        
         tableView.register(UINib(nibName: AdvTableViewCell, bundle: nil), forCellReuseIdentifier: AdvTableViewCell)
        
         tableView.register(UINib(nibName: ExperienceTableViewCell, bundle: nil), forCellReuseIdentifier: ExperienceTableViewCell)
        
         tableView.register(UINib(nibName: SafetyTableViewCell, bundle: nil), forCellReuseIdentifier: SafetyTableViewCell)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2;
        case 2:
            return 10;
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return 150
            }
            return 30
        }
        if indexPath.section == 1 {
            return 180
        }
        if indexPath.section == 3 {
            return 150
        }
        return 110
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                
                let cell = tableView.dequeueReusableCell(withIdentifier: BannerCell) as! BannerTableViewCell
                cell.loadDataWith(dataArray: bannerArray)
                cell.selectionStyle = .none
                return cell
                
            }else{
                
                let cell = tableView.dequeueReusableCell(withIdentifier: NoticeTableViewCell) as! NoticeTableViewCell
                cell.selectionStyle = .none
                return cell
            }
           
        }
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: AdvTableViewCell) as! AdvTableViewCell
            cell.selectionStyle = .none
            return cell
        }
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ExperienceTableViewCell) as! ExperienceTableViewCell
            cell.selectionStyle = .none
            return cell
            
        }
       
        let cell = tableView.dequeueReusableCell(withIdentifier: SafetyTableViewCell) as! SafetyTableViewCell
        cell.selectionStyle = .none
        return cell
    
    }
    
    
}

extension MainViewController
{
    
    func setupData() -> Void {
        
        HttpManager.shareManager.post("", parameters: nil, progress: nil, success: {(dataTask,responseData) in
        
        
        }, failure: {(dataTask,error) in
        
        
        
        })
        
//        HttpManager.shareManager.post("http://121.199.54.237:9100/ywt/front/app/likeShop", parameters: nil, progress: nil, success: {(dataTask,responseData) in
//        
//            let dict = JSONSerialization().jsonObject(with: responseData, options: .allowFragments) as! [String:Any]
//            
//            print(dict)
//        
//        }, failure: {
//            (dataTask,error) in
//            
//            
//        })
        
    }
    
    

    
}


