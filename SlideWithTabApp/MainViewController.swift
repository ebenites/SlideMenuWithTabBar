//
//  MainViewController.swift
//  SlideWithTabApp
//
//  Created by user129308 on 3/8/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit
import KYDrawerController

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_menu"), style: .plain, target: self, action: #selector(toggleDrawer))
    }

    @IBAction func toggleDrawer(_ sender: UIBarButtonItem) {
        // https://github.com/ykyouhei/KYDrawerController
        let drawerController = self.navigationController!.parent!.parent as! KYDrawerController
        drawerController.setDrawerState(.opened, animated: true)
        
    }
    
    
}
