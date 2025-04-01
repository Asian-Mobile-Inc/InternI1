//
//  FirstViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 21/3/25.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First view"
        
        let leftButton1 = UIBarButtonItem(title: "Left1", style: .plain, target: self, action: nil)
        let leftButton2 = UIBarButtonItem(title: "Left2", style: .plain, target: self, action: nil)
        let rightButton1 = UIBarButtonItem(image: UIImage(named: "apple"), style: .plain, target: self, action: nil)
        let rightButton2 = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
        let rightButton3 = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: nil)
        
        navigationItem.leftBarButtonItems = [leftButton1, leftButton2]
        navigationItem.rightBarButtonItems = [rightButton1, rightButton2, rightButton3]
        
        navigationController?.navigationBar.backgroundColor = .cyan
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .red
        navigationController?.navigationBar.barTintColor = .green
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.yellow]
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.orange]
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("- Screen 1 will did disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("- Screen 1 did disappear")
    }
    
    @IBAction func pushButton(_ sender: UIButton) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
