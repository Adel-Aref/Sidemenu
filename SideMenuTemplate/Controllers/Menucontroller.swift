//
//  ViewController.swift
//  SideMenuTemplate
//
//  Created by Adel on 11/26/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import UIKit

class MenuController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var optionMenu = ["Home","DropDown","pageControl","Segment Control","Tab Bar","Raduis Extenion"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// End of the class
}

extension MenuController{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionMenu.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sideMenuCell", for: indexPath) as! sideMenuCell
        
        cell.lblCell.text = optionMenu[indexPath.row]
        cell.imgCell.image = UIImage(named: "IMG_Logo-1024x1024")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //self.performSegue(withIdentifier: "pageControl", sender: self)
        
        self.performSegue(withIdentifier: optionMenu[indexPath.row] , sender: self)
    }
}

