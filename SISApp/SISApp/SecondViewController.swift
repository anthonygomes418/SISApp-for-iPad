//
//  SecondViewController.swift
//  SISAppTabbed
//
//  Created by Anthony Gomes on 2/20/19.
//  Copyright © 2019 Anthony Gomes. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {
    
    // how many sections are in your table
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    // Return Int, how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return people.count
        }
        else {
            return videos.count
        }
        
    }
    
    // Give each table section a title
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "Detailed report"
        }
        else{
            return "Expand"
        }
    }
    
    
    //What are the contents of each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if indexPath.section == 0 {
            var (personName, personLocation) = people[indexPath.row]
            cell.textLabel?.text = personName
        }else{
            var (videoTitle, videoDesc) = videos[indexPath.row]
            cell.textLabel?.text = videoTitle
            
        }
        
        return cell
    }
    
    
    
    
    let people = [
        ("Irrigation Cycle History ", "New York"),
        ("Thursday 01/03/2019", "New York"),
        ("Saturday 01/05/2019", "New York"),
        ("Wednesday 01/09/2019", "New York"),
        ("Sunday 01/13/2019", "New York"),
        ("Tuesday 01/15/2019", "New York"),
        ("Friday 01/18/2019", "New York"),
        ("Monday 01/21/2019", "New York"),
        ("Thursday 01/24/2019", "New York"),
        ("Monday 01/28/2019", "New York"),
        ("Wednesday 02/06/2019", "New York"),
        ("Saturday 02/09/2019", "New York"),
        ("Tuesday 02/12/2019", "New York"),
        ("Friday 02/15/2019", "New York"),
        ("Sunday 02/17/2019", "New York"),
        ("Wednesday 02/20/2019", "New York"),
        ("Friday 02/22/2019", "New York"),
        
        
        
        
        ]
    
    let videos = [
        ("Android Development", "74 Videos"),
        ("C++ For Beginners", "87 Videos"),
        ("Java", "142 Videos"),
        ("Python Programming", "63 Videos"),
        ("Web Design", "92 Videos")
    ]
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
}

