//
//  ThirdViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 21/3/25.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third View"
        navigationItem.largeTitleDisplayMode = .always
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("- Screen 3 will did disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("- Screen 3 did disappear")
    }
    
    @IBAction func popButton(_ sender: UIButton) {
        let vc = (self.navigationController?.viewControllers[1])!
        self.navigationController?.popToViewController(vc, animated: true)
    }
    
    @IBAction func popToRootButton(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
