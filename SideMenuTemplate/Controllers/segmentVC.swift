//
//  segmentVC.swift
//  SideMenuTemplate
//
//  Created by Adel on 11/28/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import UIKit

class segmentVC: UIViewController {

    @IBOutlet weak var buttonItem: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonItem.target = self.revealViewController()
        buttonItem.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController()?.rearViewRevealWidth = 240
    }
    


}
// SegmentVC extenion
extension segmentVC{

}
