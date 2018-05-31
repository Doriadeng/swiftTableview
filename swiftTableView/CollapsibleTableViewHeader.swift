//
//  CollapsibleTableViewHeader.swift
//  swiftTableView
//
//  Created by 邓念 on 2018/5/30.
//  Copyright © 2018年 DN. All rights reserved.
//

import UIKit

protocol CollapsibleTableViewHeaderDelegate {
    func toggleSection(_ header: CollapsibleTableViewHeader, section: Int)
}

class CollapsibleTableViewHeader: UITableViewHeaderFooterView {
    
    var delegate: CollapsibleTableViewHeaderDelegate?
    var section: Int = 0
    
    let titleLabel = UILabel()
    let arrowLabel = UILabel()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        // Content View
        contentView.backgroundColor = UIColor(hex: 0x2E3944)
        
        // Arrow label
        contentView.addSubview(arrowLabel)
        
        arrowLabel.snp.makeConstraints { (make) in
            make.trailing.equalTo(-20)
            make.centerY.equalTo(contentView.snp.centerY)
        }
        arrowLabel.textColor = UIColor.white
        
        // Title label
        contentView.addSubview(titleLabel)
        titleLabel.textColor = UIColor.white
        
        titleLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(20)
            make.top.equalTo(10)
            make.bottom.equalTo(-10)
        }
        
        //
        // Call tapHeader when tapping on this header
        //
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(CollapsibleTableViewHeader.tapHeader(_:))))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //
    // Trigger toggle section when tapping on the header
    //
    func tapHeader(_ gestureRecognizer: UITapGestureRecognizer) {
        guard let cell = gestureRecognizer.view as? CollapsibleTableViewHeader else {
            return
        }
        
        delegate?.toggleSection(self, section: cell.section)
    }
    
    func setCollapsed(_ collapsed: Bool) {
        //
        // Animate the arrow rotation (see Extensions.swf)
        //
        arrowLabel.rotate(collapsed ? 0.0 : .pi/2)
    }
    
}

