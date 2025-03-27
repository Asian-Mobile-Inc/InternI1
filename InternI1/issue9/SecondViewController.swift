//
//  SecondViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 21/3/25.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second view"
        let backButton = UIBarButtonItem(title: "View2", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = backButton
        
        let leftButton = UIBarButtonItem(title: "Left", style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem = leftButton
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("- Screen 2 will did disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("- Screen 2 did disappear")
    }

    @IBAction func pushButton(_ sender: UIButton) {
        let vc = ThirdViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func popButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
