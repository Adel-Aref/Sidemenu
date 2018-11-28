//
//  HomeVeiwController.swift
//  SideMenuTemplate
//
//  Created by Adel on 11/26/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import UIKit

class HomeVeiwController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       menuButton.target = self.revealViewController()
       menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController()?.rearViewRevealWidth = 240
  
    }
    


}
