//
//  StudentViewCell.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 24/3/25.
//

import UIKit

protocol StudentViewCellDelegate: AnyObject {
    func follow(name: String)
}

class StudentViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    weak var delegate: StudentViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configCell(student: Student) {
        self.nameLabel.text = student.name
        self.descriptionLabel.text = "Age: \(student.age)"
    }
    
    @IBAction func followButton(_ sender: UIButton) {
        guard let delegate = delegate else {
            return
        }
        
        guard let name = nameLabel.text else {
            return
        }
        
        delegate.follow(name: name)
    }
}
