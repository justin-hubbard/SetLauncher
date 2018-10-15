//
//  ViewController.swift
//  setronome
//
//  Created by Justin Hubbard on 3/19/18.
//  Copyright © 2018 Justin Hubbard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var buttonsStackView: UIStackView!
    @IBOutlet weak var setListButton: UIStackView!
    @IBOutlet weak var songsButton: RoundedView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupConstraints()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    /*func setupConstraints()
    {
        let viewW = bgView.frame.width
        let viewH = bgView.frame.height
        
        buttonsStackView.widthAnchor = viewW * 2 / 3
    }*/
    @IBAction func setlistsButton(_ sender: Any)
    {
        seguePrep(listType: .setlist)
    }
    
    @IBAction func songsButton(_ sender: Any)
    {
        seguePrep(listType: .song)
    }
    
    func seguePrep(listType: ListType)
    {
        guard let listVC = storyboard?.instantiateViewController(withIdentifier: "baseListVC") as? BaseListViewController else {return}
        
        listVC.listType = listType
        
        present(listVC, animated: true, completion: nil)
    }

}
















