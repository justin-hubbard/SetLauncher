//
//  HighlightedRoundButton.swift
//  setronome
//
//  Created by Justin Hubbard on 3/19/18.
//  Copyright © 2018 Justin Hubbard. All rights reserved.
//

import UIKit

@IBDesignable
class HighlightedRoundButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override var isHighlighted: Bool
    {
        didSet
        {
            self.backgroundColor = isHighlighted ? UIColor(white: 0.0, alpha: HIGHLIGHT_ALPHA) : UIColor.clear
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = CORNER_RAD
        {
        didSet { self.layer.cornerRadius = cornerRadius}
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView()
    {
        self.layer.cornerRadius = cornerRadius
    }
    

}
