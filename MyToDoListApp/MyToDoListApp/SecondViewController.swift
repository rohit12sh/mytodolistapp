//
//  SecondViewController.swift
//  MyToDoListApp
//
//  Created by Rohit Sharma on 2016-06-27.
//  Copyright (c) 2016 sandboxapp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var task: UITextField!
   
    @IBAction func addTask(sender: AnyObject) {
        toDoListArray.append(task.text)
        task.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoListArray, forKey: "toDoListArr")
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

