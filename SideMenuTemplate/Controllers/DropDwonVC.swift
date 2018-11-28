//
//  DropDwonVC.swift
//  SideMenuTemplate
//
//  Created by Adel on 11/28/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import UIKit

class DropDwonVC: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var DropDwon: DropDownSwift!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController()?.rearViewRevealWidth = 240
        
        DropDwon.inputView = UIView()
        DropDwon.rowHeight = 40
        DropDwon.listHeight = 160
        DropDwon.optionArray = ["Dog","cat","horse","tiger"]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
