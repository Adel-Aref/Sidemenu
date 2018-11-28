//
//  BaseMenuContoller.swift
//  SideMenuTemplate
//
//  Created by Adel on 11/26/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import UIKit

class BaseMenuContoller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Item", style: .plain, target: self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)))
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController().rearViewRevealWidth = 240
        self.navigationItem.leftBarButtonItem?.image = UIImage(named: "IMG_Logo-1024x1024")
       
    }
    

    

}
