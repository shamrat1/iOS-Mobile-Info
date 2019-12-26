//
//  CustomButton.swift
//  Mobile Info
//
//  Created by Yasin Shamrat on 12/26/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setButtonDesign()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setButtonDesign()
    }
    func setButtonDesign() {
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 2, height: 3)
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
