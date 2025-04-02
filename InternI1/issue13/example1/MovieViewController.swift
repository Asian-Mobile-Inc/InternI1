//
//  MovieViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 26/3/25.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var allMoviesCollectionView: UICollectionView!
    @IBOutlet weak var newMoviesCollectionView: UICollectionView!
    
    var movies = [
        Movie(name: "Jurassic World", image: "Jurassic World", year: "2025"),
        Movie(name: "28 Years Later", image: "28 Years Later", year: "2025"),
        Movie(name: "Thunderbolts", image: "Thunderbolts", year: "2025"),
        Movie(name: "Avatar", image: "Avatar", year: "2025"),
        Movie(name: "Superman", image: "Superman", year: "2025"),
        Movie(name: "Jurassic World", image: "Jurassic World", year: "2025"),
        Movie(name: "28 Years Later", image: "28 Years Later", year: "2025"),
        Movie(name: "Thunderbolts", image: "Thunderbolts", year: "2025"),
        Movie(name: "Avatar", image: "Avatar", year: "2025"),
        Movie(name: "Superman", image: "Superman", year: "2025"),
        Movie(name: "Jurassic World", image: "Jurassic World", year: "2025"),
        Movie(name: "28 Years Later", image: "28 Years Later", year: "2025"),
        Movie(name: "Thunderbolts", image: "Thunderbolts", year: "2025"),
        Movie(name: "Avatar", image: "Avatar", year: "2025"),
        Movie(name: "Superman", image: "Superman", year: "2025"),
    ]
    
    var newMovies = [
        Movie(name: "Superman", image: "Superman", year: "2025"),
        Movie(name: "Avatar", image: "Avatar", year: "2025"),
        Movie(name: "Thunderbolts", image: "Thunderbolts", year: "2025"),
        Movie(name: "28 Years Later", image: "28 Years Later", year: "2025"),
        Movie(name: "Jurassic World", image: "Jurassic World", year: "2025"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Movies"
        
        allMoviesCollectionView.delegate = self
        allMoviesCollectionView.dataSource = self
        newMoviesCollectionView.delegate = self
        newMoviesCollectionView.dataSource = self
        
        allMoviesCollectionView.register(UINib(nibName: "MovieViewCell", bundle: .main), forCellWithReuseIdentifier: "movieCell")
        allMoviesCollectionView.register(UINib(nibName: "MovieHeaderView", bundle: .main), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "movieHeaderCell")
        newMoviesCollectionView.register(UINib(nibName: "MovieViewCell", bundle: .main), forCellWithReuseIdentifier: "movieCell")
    }
}

extension MovieViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionView == allMoviesCollectionView ? movies.count : newMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieViewCell
        let movie = movies[indexPath.row]
        cell.configCell(movie: movie)
        cell.layer.cornerRadius = 12
        
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if collectionView == newMoviesCollectionView {
            return UICollectionReusableView()
        }
        
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "movieHeaderCell", for: indexPath) as! MovieHeaderView
            header.titleLabel.text = "2025 Movies"
            header.movieNumbersLabel.text = "\(movies.count)"
            
            return header
            
        default:
            return UICollectionReusableView()
        }
    }
}

extension MovieViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var cellWidth = 0
        if collectionView == allMoviesCollectionView {
            let spacing = 10
            let numberOfCellsPerRow = 2
            let totalSpacing = spacing * (numberOfCellsPerRow - 1)
            
            let collectionViewWidth = collectionView.frame.width
            cellWidth = (Int(collectionViewWidth) - totalSpacing) / numberOfCellsPerRow
        } else {
            let spacing = 10
            let numberOfCellsPerRow = 1
            let totalSpacing = spacing * (numberOfCellsPerRow - 1)
            
            let collectionViewHeight = collectionView.frame.height
            cellWidth = (Int(collectionViewHeight) - totalSpacing) / numberOfCellsPerRow
        }
        
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return collectionView == allMoviesCollectionView ? 10 : 10
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return collectionView == allMoviesCollectionView ? UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0) : .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return collectionView == allMoviesCollectionView ? CGSize(width: collectionView.frame.width, height: 50) : .zero
    }
}

extension MovieViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = MovieDetailViewController()
        let movie = movies[indexPath.row]
        vc.name = movie.name
        vc.image = movie.image
        vc.year = movie.year
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
