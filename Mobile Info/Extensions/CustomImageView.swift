//
//  CustomImageView.swift
//  Mobile Info
//
//  Created by Yasin Shamrat on 12/26/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setImageViewDesign()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setImageViewDesign()
    }
    
    func setImageViewDesign(){
        clipsToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 10
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 10).cgPath
    }
}
