//
//  StudentDetailViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 24/3/25.
//

import UIKit

class StudentDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Student detail"
        nameLabel.text = name
    }
}
