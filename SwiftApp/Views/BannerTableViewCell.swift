
//  BannerTableViewCell.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/29.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit
import SDCycleScrollView

class BannerTableViewCell: UITableViewCell {

    //var cycleScrollView: SDCycleScrollView!
    @IBOutlet var cycleScrollView: SDCycleScrollView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        cycleScrollView = SDCycleScrollView(frame: self.frame)
//        contentView.addSubview(cycleScrollView)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)!
//    }
    
    public func loadDataWith(dataArray:[Any]) -> Void {
        
        cycleScrollView.localizationImageNamesGroup = dataArray;
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
