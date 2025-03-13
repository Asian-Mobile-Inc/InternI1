//
//  ProfileViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 13/3/25.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let corgi = CustomProfileView(frame: CGRect(x: 50, y: 100, width: 100, height: 125))
        corgi.avatarImageView?.image = UIImage(named: "corgi")
        corgi.nameLabel?.text = "Corgi"
        view.addSubview(corgi)
        
        let husky = CustomProfileView(frame: CGRect(x: 200, y: 100, width: 100, height: 125))
        husky.avatarImageView?.image = UIImage(named: "husky")
        husky.nameLabel?.text = "husky"
        view.addSubview(husky)
        
        let userView = Bundle.main.loadNibNamed("UserProfile", owner: self, options: nil)?.first as? UserProfile
        userView?.frame = CGRect(x: 50, y: 250, width: 100, height: 125)
        userView?.avatarImageView.image = UIImage(named: "no_avatar")
        userView?.nameLabel.text = "User 1"
        userView?.delegate = self
        view.addSubview(userView!)
        
        let newUserView = Bundle.main.loadNibNamed("UserProfile", owner: self, options: nil)?.first as? UserProfile
        newUserView?.frame = CGRect(x: 200, y: 250, width: 100, height: 125)
        newUserView?.avatarImageView.image = UIImage(named: "newAvatar")
        newUserView?.nameLabel.text = "H.Thanh"
        newUserView?.delegate = self
        view.addSubview(newUserView!)
    }
}

extension ProfileViewController: UserProfileDelegate {
    func didTap(view: UserProfile, count: Int) {
        print("Count: \(count)")
    }
}
