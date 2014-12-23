//
//  ViewController.swift
//  FirstProject
//
//  Created by David Nachtigall on 23.12.14.
//  Copyright (c) 2014 David Nachtigall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //This is great code
        
        nameLabel.text = enterNameTextField.text
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.redColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.blueColor()
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.resignFirstResponder()
        enterMessageTextField.text = ""
        
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
    }

}

