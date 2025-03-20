//
//  DrawingHalfCircleView.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 14/3/25.
//

import UIKit

class DrawingHalfCircleView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(arcCenter: CGPoint(x: rect.width/2, y: rect.height/2), radius: rect.height/2, startAngle: CGFloat.pi, endAngle: 0, clockwise: true)
        UIColor.orange.setFill()
        path.fill()
    }
}
