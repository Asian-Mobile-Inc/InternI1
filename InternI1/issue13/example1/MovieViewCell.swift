//
//  MovieViewCell.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 26/3/25.
//

import UIKit

class MovieViewCell: UICollectionViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configCell(movie: Movie) {
        self.movieImage.image = UIImage(named: "\(movie.image)")
        self.movieLabel.text = movie.name
    }
}
