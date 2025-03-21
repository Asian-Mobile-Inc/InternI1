//
//  TestLifeCircleViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 21/3/25.
//

import UIKit

class TestLifeCycleViewController: UIViewController {

    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .lightGray
        self.view = view
        print("- load view")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("- view did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("- view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("- view appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("- view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("- view did disappear")
    }
}
