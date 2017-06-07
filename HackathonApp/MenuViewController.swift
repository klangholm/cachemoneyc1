//
//  MainViewController.swift
//  HackathonApp
//
//  Created by Skiljan, Nicholas on 6/7/17.
//  Copyright © 2017 klangholm. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShowing = false
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        super.viewWillAppear(animated)
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        if (menuShowing) {
            leadingConstraint.constant = -140
        } else {
            leadingConstraint.constant = 0
        }
        
        menuShowing = !menuShowing
    }
    
}
