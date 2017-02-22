//
//  StroeTableViewCell.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/14.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit
import SDWebImage

class StroeTableViewCell: UITableViewCell {

    @IBOutlet var area: UILabel!
    
    @IBOutlet var des: UILabel!
    
    @IBOutlet var name: UILabel!
    
    @IBOutlet var img: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        
        
    }
    
    func loadData(dataArray: [Any],indexPath: IndexPath) -> Void {
        
        let store = dataArray[indexPath.section] as! Sotre
        
        img.image = UIImage(named: store.img)
        
        name.text = store.name
        
        des.text = store.exepain
        
        area.text = store.area
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
