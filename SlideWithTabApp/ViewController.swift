//
//  ViewController.swift
//  SlideWithTabApp
//
//  Created by user129308 on 3/4/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit
import KYDrawerController


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func callAction(_ sender: Any) {
        
        // https://github.com/ykyouhei/KYDrawerController
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let drawerController = storyboard.instantiateViewController(withIdentifier: "principal") as! KYDrawerController
        
        let navigationController = UINavigationController(rootViewController: drawerController)
        
        navigationController.navigationBar.isHidden = true;
        self.present(navigationController, animated: true, completion: nil)
        
        
    }
    
}

