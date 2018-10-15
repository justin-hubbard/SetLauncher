//
//  SongsViewController.swift
//  setronome
//
//  Created by Justin Hubbard on 3/21/18.
//  Copyright © 2018 Justin Hubbard. All rights reserved.
//

import UIKit

class BaseListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerLabel: UILabel!
    
    var listType: ListType = .song
    
    var tableDataArray: [AnyObject] = []
    
    // Less dynamic than what i wanted
    var songsArr: [Song] = []
    var setsArr: [Setlist] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //listSetup()
        getDataForTableView(generate: true)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        print("ListVC: viewDidLoad() (\(listType))")
        nonListSetup()
        
        
        // Do any additional setup after loading the view.
    }
    
    func nonListSetup()
    {
        headerLabel.text = listType.rawValue
    }
    
    func listSetup()
    {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getDataForTableView(generate: Bool)
    {
        
        if generate
        {
            print("generate")
            if listType == .song
            {
                songsArr = FakeDataGenerator.generator.generateSongs(numberOfSongs: 10)
            }
            else
            {
                setsArr = FakeDataGenerator.generator.generateSetLists(numberOfSets: 10)
            }
        }
        else
        {
            tableDataArray = []
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backButtonWasPressed(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
    
    // table view stuff
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if listType == .song { return songsArr.count }
        return setsArr.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "baseListCell", for: indexPath) as? BaseListCell
        {
            if listType == .song
            {
                let element = songsArr[indexPath.row] as Song
                cell.configureCell(data: element)
            }
            if listType == .setlist
            {
                let element = setsArr[indexPath.row] as Setlist
                cell.configureCell(data: element)
            }
            
            //cell.configureCell(data: element)
            return cell
        }
        else
        {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt \(indexPath.row)")
    }

}














