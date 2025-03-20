//
//  CustomView.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 20/3/25.
//

import UIKit

protocol CustomViewDelegate: AnyObject {
    func passData(data: String)
}

protocol CustomViewDataSource: AnyObject {
    func customView(nameOf customView: UIView) -> String
}

class CustomView: UIView {

    weak var delegate: CustomViewDelegate?
    weak var dataSource: CustomViewDataSource?
    @IBOutlet weak var nameLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadView()
    }
    
    func loadView() {
        let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! UIView
        addSubview(view)
        configView()
    }
    
    func configView() {
        if let dataSource = dataSource {
            nameLabel.text = dataSource.customView(nameOf: self)
        } else {
            print("not implement")
        }
    }
    
    @IBAction func click(_ sender: UIButton) {
        guard let name = nameLabel.text else { return }
        delegate?.passData(data: name)
    }
}
