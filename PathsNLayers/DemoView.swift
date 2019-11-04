//
//  DemoView.swift
//  PathsNLayers
//
//  Created by Berkin Sili on 31.10.2019.
//  Copyright © 2019 Berkin Sili. All rights reserved.
//

import UIKit

class DemoView: UIView {

    var path: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.darkGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
