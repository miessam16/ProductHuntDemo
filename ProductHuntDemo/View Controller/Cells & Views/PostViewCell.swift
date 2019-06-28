//
//  PostViewCell.swift
//  ProductHuntDemo
//
//  Created by Ahmed Hesham on 6/28/19.
//  Copyright © 2019 Ahmed Hesham. All rights reserved.
//

import UIKit
import moa

class PostViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var postImage: UIImageView!
    
    @IBOutlet weak var numberofVotesLabel: UILabel!
    
    @IBOutlet weak var numberOfCommentsLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(model : Post , comment : Comment?)  {
        nameLabel.text = model.name
        numberofVotesLabel.text =  "\(model.votesCount ?? 0)"
        numberOfCommentsLabel.text = "\(model.commentsCount ?? 0)"
        descriptionLabel.text = model.discussionUrl
        postImage.image = UIImage(named: "placeholder.jpg")
        postImage.moa.url = model.thumbnail?.imageUrl
        if let commentData = comment {
            commentLabel.text = commentData.body
        }
    }
    
}
