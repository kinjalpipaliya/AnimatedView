//
//  ViewController.swift
//  AnimatedView
//
//  Created by Kinjal Pipaliya on 19/04/20.
//  Copyright © 2020 Kinjal Pipaliya. All rights reserved.
//

import UIKit

@IBDesignable class header: UIView
{
    @IBInspectable var curveHeight : CGFloat = 50.0
    var layerheader = CAShapeLayer()
    
    override func draw(_ rect: CGRect)
    {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addArc(withCenter: CGPoint(x: CGFloat(rect.width) - curveHeight, y: rect.height), radius: curveHeight, startAngle: 0, endAngle: 1.5 * CGFloat.pi, clockwise: false)
        path.addLine(to: CGPoint(x: curveHeight, y: rect.height - curveHeight))
        
        path.addArc(withCenter: CGPoint(x: curveHeight, y: rect.height - (curveHeight * 2.0)), radius: curveHeight, startAngle: 0, endAngle:  CGFloat.pi, clockwise: true)
               path.close()
               layerheader.path = path.cgPath
        layerheader.fillColor = UIColor(red: 65/255, green: 81/255, blue: 107/255, alpha: 1.0).cgColor
        layerheader.frame = rect
               self.layer.insertSublayer(layerheader, at: 0)
               self.layerheader.shadowColor = UIColor.black.cgColor
               self.layerheader.shadowRadius = 20.0
               self.layerheader.shadowOpacity = 0.7
    }
}
