//
//  LoginViewController.swift
//  MyToDoListApp
//
//  Created by Rohit Sharma on 2016-06-28.
//  Copyright (c) 2016 sandboxapp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: AnyObject) {
        
        if (emailTextField.text == "rohit12sh@gmail.com" &&
            passwordTextField.text == "abc123") {
            
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let tabBarController = storyBoard.instantiateViewControllerWithIdentifier("TabBarController") as UITabBarController
                let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
                appDelegate.window?.rootViewController = tabBarController
        } else {
            displayMyAlertMessage("invalid credentials, please try again")
        }
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        
        var myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.Default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated:true, completion:nil);
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
