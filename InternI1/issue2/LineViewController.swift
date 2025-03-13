//
//  LineViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 11/3/25.
//

import UIKit

class LineViewController: UIViewController {
    
    var path = UIBezierPath()
    var firstLocation = CGPoint.zero
    var shapeLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .white
        view.layer.addSublayer(shapeLayer)
        self.shapeLayer.lineWidth = 2
        self.shapeLayer.strokeColor = UIColor.blue.cgColor
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: view) {
            firstLocation = location
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: view) {
            
            path.removeAllPoints()
            path.move(to: firstLocation)
            path.addLine(to: location)
            
            shapeLayer.path = path.cgPath
        }
    }
}
