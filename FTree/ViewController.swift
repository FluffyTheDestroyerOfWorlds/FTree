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
        
        navigationController?.title = ""
        navigationItem.title = sender.currentTitle
        
        
        
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

