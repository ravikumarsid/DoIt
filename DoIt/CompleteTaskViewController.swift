//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Ravi Kumar Venuturupalli on 7/2/17.
//  Copyright © 2017 Ravi Kumar Venuturupalli. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    @IBOutlet weak var completeTaskLabel: UILabel!
    
    var previousVC = TasksViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            completeTaskLabel.text = "❗️\(task.name)"
        } else {
            completeTaskLabel.text = task.name
        }

    }

    @IBAction func completeTask(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }

}
