//
//  UserProfile.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 13/3/25.
//

import UIKit

protocol UserProfileDelegate {
    func didTap(view: UserProfile, count: Int)
}

class UserProfile: UIView {
    
    var count = 0
    var delegate: UserProfileDelegate?
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func tap(_ sender: UIButton) {
        count += 1
        nameLabel.text = "\(count)"
        
        if let delegate = delegate {
            delegate.didTap(view: self, count: count)
        }
    }
}
