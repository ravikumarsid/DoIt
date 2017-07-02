//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Ravi Kumar Venuturupalli on 7/2/17.
//  Copyright © 2017 Ravi Kumar Venuturupalli. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task: Task? = nil
    @IBOutlet weak var completeTaskLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            completeTaskLabel.text = "❗️\(task!.name!)"
        } else {
            completeTaskLabel.text = task!.name!
        }

    }

    @IBAction func completeTask(_ sender: Any) {
         let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }

}
