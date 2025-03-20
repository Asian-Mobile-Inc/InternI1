//
//  DelegateViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 20/3/25.
//

import UIKit

class DelegateViewController: UIViewController {

    @IBOutlet weak var customView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.delegate = self
        customView.dataSource = self
        customView.configView()
    }
    
    func showData(data: String) {
        let alert = UIAlertController(title: "Data from Custom View", message: data, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OKE", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

extension DelegateViewController: CustomViewDelegate {
    func passData(data: String) {
        showData(data: data)
    }
}

extension DelegateViewController: CustomViewDataSource {
    func customView(nameOf customView: UIView) -> String {
        return "Hoang Thanh"
    }
}
