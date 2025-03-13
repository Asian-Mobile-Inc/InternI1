//
//  CustomProfileView.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 13/3/25.
//

import UIKit

class CustomProfileView: UIView {
    
    var avatarImageView: UIImageView?
    var nameLabel: UILabel?
    var markButton: UIButton?
    var count = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        
        avatarImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*4/5))
        avatarImageView!.image = UIImage(named: "no_avatar")
        avatarImageView!.contentMode = .scaleAspectFit
        self.addSubview(avatarImageView!)
        
        nameLabel = UILabel(frame: CGRect(x: 0, y: frame.size.height*4/5, width: frame.size.width, height: frame.size.height/5))
        nameLabel!.text = "H.Thanh"
        nameLabel!.backgroundColor = .lightGray
        nameLabel!.textAlignment = .center
        nameLabel!.textColor = .blue
        self.addSubview(nameLabel!)
        
        markButton = UIButton(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        markButton!.backgroundColor = .clear
        markButton?.addTarget(self, action: #selector(tap), for: .touchUpInside)
        self.addSubview(markButton!)
    }
    
    @objc func tap() {
        count += 1
        nameLabel?.text = "\(count)"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
