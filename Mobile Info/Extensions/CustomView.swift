//
//  CustomView.swift
//  Mobile Info
//
//  Created by Yasin Shamrat on 12/26/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class CustomView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadiusAndShawdow()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadiusAndShawdow()
    }
    func setRadiusAndShawdow() {
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 2, height: 3)
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
