//
//  DrawingCustomView.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 14/3/25.
//

import UIKit

class DrawingCustomView: UIView {
    func drawLine(start: CGPoint, end: CGPoint) {
        let path = UIBezierPath()
        path.move(to: start)
        path.addLine(to: end)
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 2
        shapeLayer.path = path.cgPath
        
        self.layer.addSublayer(shapeLayer)
    }
}
