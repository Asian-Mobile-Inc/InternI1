//
//  touchEventViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 11/3/25.
//

import UIKit

class TouchEventViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Test touch methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touch began")
        view.backgroundColor = .blue
        
        if let touch = touches.first { // get first point
            if touch.view == greenView { // get view from touch
                print("Inside GreenView")
                let currentPointOfGreenView = touch.location(in: greenView)
                print("Green point (\(currentPointOfGreenView.x),\(currentPointOfGreenView.y)")
            } else if touch.view == redView {
                print("Inside RedView")
                let currentPointOfGreenView = touch.location(in: redView)
                print("Red point (\(currentPointOfGreenView.x),\(currentPointOfGreenView.y)")
            } else {
                print("outside RedView and GreenView")
                let currentPoint = touch.location(in: view)
                print("View point (\(currentPoint.x), \(currentPoint.y)")
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touch moved")
        view.backgroundColor = .yellow
        
        // move red view and green view
        if let touch = touches.first {
            if touch.view == redView {
                let location = touch.location(in: view)
                redView.center = location
            } else if touch.view == greenView {
                let location = touch.location(in: view)
                greenView.center = location
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touch ended")
        view.backgroundColor = .white
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Touch cancelled")
        view.backgroundColor = .red
    }
}
