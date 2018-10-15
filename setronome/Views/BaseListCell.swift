//
//  SongCell.swift
//  setronome
//
//  Created by Justin Hubbard on 3/21/18.
//  Copyright © 2018 Justin Hubbard. All rights reserved.
//

import UIKit

class BaseListCell: UITableViewCell {

    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellSubtitleLabel: UILabel!
    @IBOutlet weak var bgRoundedView: RoundedView!
    @IBOutlet weak var tintView: RoundedView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.backgroundColor = UIColor.clear
        // Initialization code
    }
    
    func configureCell(data: Song)
    {
        tintView.backgroundColor = BLUE_TINT
        
        cellTitleLabel.text = data.name
        cellSubtitleLabel.text = data.artist
    }
    
    func configureCell(data: Setlist)
    {
        cellTitleLabel.text = data.name
        cellSubtitleLabel.text = data.date
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool)
    {
        if highlighted
        {
            tintView.isHidden = false
            //bgRoundedView.backgroundColor = UIColor.lightGray
        }
        else
        {
            tintView.isHidden = true
            //bgRoundedView.backgroundColor = LIGHT_GREY_BG
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        //super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        if selected
        {
            //self.artistLabel.text = "SELECTED"
            //self.backgroundColor = UIColor.red
            //self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
            //self.layer.backgroundColor = UIColor.red.cgColor
        }
        else
        {
            //self.layer.backgroundColor = UIColor.clear.cgColor
            //self.layer.backgroundColor = UIColor.red.cgColor
        }
    }

}
