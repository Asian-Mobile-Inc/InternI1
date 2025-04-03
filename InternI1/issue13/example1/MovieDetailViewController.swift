//
//  DetailMovieViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 26/3/25.
//

import UIKit

class MovieDetailViewController: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    var name: String = ""
    var image: String = ""
    var year: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        movieName.text = name
        movieImage.image = UIImage(named: image)
        yearLabel.text = year
    }
}
