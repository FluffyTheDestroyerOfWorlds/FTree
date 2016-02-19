//
//  ViewController.swift
//  FTree
//
//  Created by David Boesen on 2/18/16.
//  Copyright © 2016 David Boesen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func NextView(sender: UIButton) {
    
        // not used .... yet probably should have added a title per view conbtroller
   //     navigationController?.title = ""
   //     navigationItem.title = sender.currentTitle
        
        
        
        // I left the 2 dedunant view controllers in there just for the HW - else they are duplicated
        
        
        
        if sender.tag == 1 {
            //back button if parent button pressed
            self.navigationController?.popViewControllerAnimated(true)
        }
        if sender.tag == 2 {
            // Ask if you want to restart
            // Create the alert controller
            let alertController = UIAlertController(title: "End of Family Tree", message: "Would you like to start over?", preferredStyle: .Alert)
            
            // Create the actions
            let okAction = UIAlertAction(title: "Restart", style: UIAlertActionStyle.Default) {
                UIAlertAction in
                self.navigationController?.popToRootViewControllerAnimated(true)
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) {
                UIAlertAction in
               // do nothing for now
            }
            
            // Add the actions
            alertController.addAction(okAction)
            alertController.addAction(cancelAction)
            
            // Present the controller
            self.presentViewController(alertController, animated: true, completion: nil)

            
        }
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

