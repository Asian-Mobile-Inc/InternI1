//
//  DrawingTrianglesView.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 14/3/25.
//

import UIKit

class DrawingTriangleView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: self.frame.width/2, y: 0))
        path.addLine(to: CGPoint(x: 0, y: self.frame.height))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.close()
        UIColor.orange.setFill()
        path.fill()
    }
}
