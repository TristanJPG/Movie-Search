//
//  MovieTableViewCell.swift
//  Movie Searcher
//
//  Created by Tristan Prater on 8/7/20.
//  Copyright © 2020 Tristan Prater. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieYearLabel: UILabel!
    @IBOutlet var moviePosterView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        movieTitleLabel.text = " "
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    static let identifier = "MovieTableViewCell"
    static func nib() -> UINib {
        
        return UINib(nibName: "MovieTableViewCell", bundle: nil)
        
    }
    
    func configure(with model: Movie) {
        
        
        self.movieTitleLabel.text = model.Title
        self.movieYearLabel.text = model.Year
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!) {
            self.moviePosterView.image = UIImage(data: data)
        }
        
    }
    
}
