//
//  DrawingDefaultView.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 14/3/25.
//

import UIKit

class DrawingRectangleView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 15)
        UIColor.orange.setFill()
        path.fill()
        UIColor.green.setStroke()
        path.lineWidth = 2
        path.stroke()
    }
}

