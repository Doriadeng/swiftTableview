//
//  CollapsibleTableViewCell.swift
//  swiftTableView
//
//  Created by 邓念 on 2018/5/30.
//  Copyright © 2018年 DN. All rights reserved.
//

import UIKit
import SnapKit

class CollapsibleTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    let nameLabel = UILabel()
    let detailLabel = UILabel()
    let detailImage = UIImageView()
    
    // MARK: Initalizers
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // configure nameLabel
        contentView.addSubview(nameLabel)
        
        nameLabel.snp.remakeConstraints { (make) in
            make.top.equalTo(10)
            make.leading.equalTo(20)
            make.trailing.equalToSuperview().offset(-10)
        }
        nameLabel.numberOfLines = 0
        nameLabel.font = UIFont.systemFont(ofSize: 16)
        
        contentView.addSubview(detailImage)
        detailImage.snp.remakeConstraints { (make) in
            make.leading.equalTo(20)
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            //            make.width.height.equalTo(80);
        }
        
        // configure detailLabel
        contentView.addSubview(detailLabel)
        
        detailLabel.snp.remakeConstraints { (make) in
            make.leading.equalTo(20)
            make.trailing.equalToSuperview().offset(-10)
            make.top.equalTo(detailImage.snp.bottom).offset(5)
            make.bottom.equalTo(-10)
            
        }
        detailLabel.numberOfLines = 0
        detailLabel.font = UIFont.systemFont(ofSize: 12)
        detailLabel.textColor = UIColor.lightGray
        detailLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
