//
//  FirstViewController.swift
//  MyToDoListApp
//
//  Created by Rohit Sharma on 2016-06-27.
//  Copyright (c) 2016 sandboxapp. All rights reserved.
//

import UIKit

var toDoListArray = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var table: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return toDoListArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default,
            reuseIdentifier: "Cell")
        cell.textLabel?.text = toDoListArray[indexPath.row]
        return cell
    }
    
    override func viewDidAppear(animated: Bool) {
        table.reloadData()
    }
    
    @IBAction func logout(sender: AnyObject) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyBoard.instantiateViewControllerWithIdentifier("loginVC")
            as LoginViewController
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        appDelegate.window?.rootViewController = loginVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoListArr") != nil
        {
            toDoListArray = NSUserDefaults.standardUserDefaults().objectForKey("toDoListArr")
            as [String]
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle:
        UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
          toDoListArray.removeAtIndex(indexPath.row)
            NSUserDefaults.standardUserDefaults().setObject(toDoListArray,
                forKey:  "toDoListArr")
            table.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

