//
//  OneTableViewController.swift
//  LLTabBarController
//
//  Created by LvJianfeng on 2017/3/14.
//  Copyright © 2017年 LvJianfeng. All rights reserved.
//

import UIKit

class OneTableViewController: UITableViewController, LLTabBarControllerProtocol {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CELL")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)

        cell.textLabel?.text = "OneVC--->\(indexPath.row)"

        return cell
    }
    
    func tapTabBarButton(button: UIButton) {
        print("OneVC:\(button.tag)")
    }
}
