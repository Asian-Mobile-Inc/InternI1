//
//  DrawingOvalView.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 14/3/25.
//

import UIKit

class DrawingOvalView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: self.bounds)
        UIColor.orange.setFill()
        path.fill()
    }
}
