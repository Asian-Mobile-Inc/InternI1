//
//  DrawingViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 14/3/25.
//

import UIKit

class DrawingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // draw path in layer
        let lineView = DrawingCustomView(frame: CGRect(x: 0, y: 60, width: view.frame.width, height: 200))
        lineView.drawLine(start: CGPoint(x: 50, y: 50), end: CGPoint(x: 400, y: 150))
        lineView.backgroundColor = .lightGray
        view.addSubview(lineView)
        
        // draw path in draw()
        let rectView = DrawingRectangleView(frame: CGRect(x: 150, y: 300, width: 100, height: 100))
        view.addSubview(rectView)
        
        let triangleView = DrawingTriangleView(frame: CGRect(x: 150, y: 400, width: 100, height: 100))
        view.addSubview(triangleView)
        
        let ovalView = DrawingOvalView(frame: CGRect(x: 150, y: 500, width: 100, height: 50))
        view.addSubview(ovalView)
        
        let halfCircle = DrawingHalfCircleView(frame: CGRect(x: 150, y: 600, width: 100, height: 100))
        view.addSubview(halfCircle)
    }
}
