//
//  TaskViewController.swift
//  NotesApp_sampleIOS
//
//  Created by Perennial Systems on 12/02/22.
//

import UIKit

class TaskViewController: UIViewController {

    
    @IBOutlet var  lable: UILabel!
    var task: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lable.text =  task
        
        navigationItem.rightBarButtonItem =  UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
            
        }
    @objc func deleteTask(){
//
//        let newCount = count - 1
//        UserDefaults().setValue(newCount , forKey: "count")
//        UserDefaults().setValue(nil , forKey: "task_\(currentPosition)")

    }
    

 

}
