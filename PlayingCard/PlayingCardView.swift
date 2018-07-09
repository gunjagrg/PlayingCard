//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by Gunja Gurung on 7/9/18.
//  Copyright © 2018 Gunja Gurung. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()!
        context.addArc(center: CGPoint(x: bounds.midX, y: bounds.midY),
            radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
        context.setLineWidth(5.0)
        UIColor.green.setFill()
        UIColor.red.setStroke()
        context.strokePath()
        context.fillPath() // Fill path doesn't work as strokePath consumes the path (while using context).
                           //BezierPath, on the other hand, doesn't consume it.
        
    }
 

}
