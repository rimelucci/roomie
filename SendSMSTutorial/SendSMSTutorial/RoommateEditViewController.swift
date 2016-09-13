//
//  RoommateEditViewController.swift
//  Roomi
//
//  Created by Rick Melucci on 9/9/16.
//  Copyright © 2016 Beam Ltd. All rights reserved.
//

import UIKit

class RoommateEditViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var phoneNumberTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        // do validation on the text
        
        
        
        // create the roomate object
        let roommate = Roommate(name: self.nameTextField.text!, phoneNumber: self.phoneNumberTextField.text!)
        
        // get NSUserDefaults array of roommates
            
        
        // add the new roommate
        
        
        // save the updated array
        
        // dismiss the view controller when done
        
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
