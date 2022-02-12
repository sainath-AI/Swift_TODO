//
//  EntryViewController.swift
//  NotesApp_sampleIOS
//
//  Created by Perennial Systems on 12/02/22.
//

import UIKit

class EntryViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        
        return true
    }
    
 
    @IBAction func saveTask(){
        
    }

}
