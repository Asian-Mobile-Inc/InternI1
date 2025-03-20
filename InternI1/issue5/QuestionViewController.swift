//
//  QuestionViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 19/3/25.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var pageNumberView: UIView!
    @IBOutlet weak var dAnswerButton: UIButton!
    @IBOutlet weak var cAnswerButton: UIButton!
    @IBOutlet weak var bAnswerButton: UIButton!
    @IBOutlet weak var aAnswerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        pageNumberView.layer.cornerRadius = 10
        pageNumberView.layer.borderWidth = 1
        pageNumberView.layer.borderColor = UIColor.lightGray.cgColor
        
        aAnswerButton.layer.cornerRadius = 10
        aAnswerButton.layer.borderWidth = 1
        aAnswerButton.layer.borderColor = UIColor.tintColor.cgColor
        
        bAnswerButton.layer.cornerRadius = 10
        bAnswerButton.layer.borderWidth = 1
        bAnswerButton.layer.borderColor = UIColor.tintColor.cgColor
        
        cAnswerButton.layer.cornerRadius = 10
        cAnswerButton.layer.borderWidth = 1
        cAnswerButton.layer.borderColor = UIColor.tintColor.cgColor
        
        dAnswerButton.layer.cornerRadius = 10
        dAnswerButton.layer.borderWidth = 1
        dAnswerButton.layer.borderColor = UIColor.tintColor.cgColor
    }
    
    
}
