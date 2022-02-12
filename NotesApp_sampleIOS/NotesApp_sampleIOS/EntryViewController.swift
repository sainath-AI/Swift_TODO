//
//  EntryViewController.swift
//  NotesApp_sampleIOS
//
//  Created by Perennial Systems on 12/02/22.
//

import UIKit

class EntryViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!

    var update: (() -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "save", style: .done, target: self,action:  #selector(saveTask))
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        
        return true
    }
    
 
    @objc func saveTask(){
        guard let text  = field.text , !text.isEmpty else {
            return
        }
        
        guard let count  = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        let newCount = count + 1
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task_\(newCount)")
        
        update?()
        
        navigationController?.popViewController(animated: true)
    }

}
