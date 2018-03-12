//
//  MenuViewController.swift
//  SlideWithTabApp
//
//  Created by user129308 on 3/11/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit
import KYDrawerController

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var options = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.options.append("Home")
        self.options.append("Alerts")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let option:String = options[indexPath.row]
        
        let cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier:"Cell")
        cell.textLabel?.text = option
        cell.imageView?.image = UIImage(named: "ic_menu")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let drawerController:KYDrawerController = self.parent as! KYDrawerController;
        let mainViewController = drawerController.mainViewController as! UITabBarController
        
        let option:String = options[indexPath.row]
        
        switch option {
            case "Home":
                mainViewController.selectedIndex = 0
            case "Alerts":
                mainViewController.selectedIndex = 1
            default:
                print("default")
        }
        
        drawerController.setDrawerState(.closed, animated: true)
    }
    
}
