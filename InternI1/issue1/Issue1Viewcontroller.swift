//
//  Issue1Viewcontroller.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 12/3/25.
//

import UIKit

class Issue1Viewcontroller: UIViewController {

    @IBOutlet var descriptionLabel: [UILabel]!
    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        titleLabel.text = "Issue 1"
        
        // edit property by code
        descriptionLabel[0].text = "Label 1"
        descriptionLabel[0].textColor = .red
        
        descriptionLabel[1].text = "Label 2"
        descriptionLabel[1].textColor = .blue
        
        descriptionLabel[2].text = "Label 3"
        descriptionLabel[2].textColor = .yellow
        
        
        // with code
        let avatar = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        avatar.image = UIImage(named: "no_avatar")
        avatar.contentMode = .scaleAspectFit
        view.addSubview(avatar)
        
        let userName = UILabel(frame: CGRect(x: 100, y: 200, width: 100, height: 25))
        userName.text = "HThanh"
        userName.textAlignment = .center
        userName.backgroundColor = .gray
        userName.textColor = .blue
        view.addSubview(userName)
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 225))
        button.backgroundColor = .clear
        button.addTarget(self, action: #selector(tap), for: .touchDragInside)
        view.addSubview(button)
        
        // Auto layout by code
        clickButton.backgroundColor = .blue
        clickButton.setTitle("Click me", for: .normal)
        clickButton.setTitleColor(.yellow, for: .normal)
        clickButton.titleLabel?.textColor = .yellow
        clickButton.addTarget(self, action: #selector(click), for: .touchUpInside)
        clickButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(clickButton)
        
        NSLayoutConstraint.activate([
            clickButton.heightAnchor.constraint(equalToConstant: 40),
            clickButton.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    @objc func tap() {
        print("Tapped!")
    }
    
    @objc func click() {
        print("Clicked")
    }

}
