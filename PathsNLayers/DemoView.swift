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
        
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
//        self.createRectangle()
//        self.createTriangle()
        
        // Create an oval shape path.
//        self.path = UIBezierPath(ovalIn: self.bounds)
        
        //Create a circle, using ovalIn
        self.path = UIBezierPath(ovalIn: CGRect(x: self.frame.size.width/2 - self.frame.size.height/2,
        y: 0.0,
        width: self.frame.size.height,
        height: self.frame.size.height))
        
        UIColor.orange.setFill()
        path.fill()

        // Specify a border (stroke) color.
        UIColor.purple.setStroke()
        path.stroke()
    }

    func createRectangle() {
        // Initialize the path.
        path = UIBezierPath()
     
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
     
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
     
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
     
        // Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
     
        // Close the path. This will create the last line automatically.
        path.close()
    }
    
    func createTriangle() {//Do It Yourself
        //Initialize the path
        path = UIBezierPath()
        
        //Set starting point
        path.move(to: CGPoint(x: self.frame.width/2, y: 0.0))
        
        //Add Line to lower left corner
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.height))
        
        //Add Line to lower right corner
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        
        //Close the path.
        path.close()
        
    }

}
