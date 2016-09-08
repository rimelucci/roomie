//
//  ViewController.swift
//  SendSMSTutorial
//
//  Created by Rick Melucci on 9/6/16.
//  Copyright © 2016 Beam Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let messageComposer = MessageComposer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.title = "Roomie"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    @IBAction func sendTextMessageButtonTapped(sender: UIButton) {
        
        //Make sure device can send text message
        if (messageComposer.canSendText()) {
            //Obtain a configured MFMessageComposeViewController
            let messageComposeVC = messageComposer.configuredMessageComposeViewControllerWithMessage("Bringing someone home tn ;)")
            
            presentViewController(messageComposeVC, animated: true, completion: nil)
        }
        
        else{
            //let the user know if his/her device isn't able to send texts
            let errorAlert = UIAlertView(title: "Cannot send text message", message: "Your device is not able to send text messages right now", delegate: self, cancelButtonTitle: "OK")
        }
        
    }
    
    
    @IBAction func redButtonSaveMe(sender: UIButton) {
        
        //Make sure device can send text message
        if (messageComposer.canSendText()) {
            //Obtain a configured MFMessageComposeViewController
            let messageComposeVC = messageComposer.configuredMessageComposeViewControllerWithMessage("Save me!! 🆘")
            
            presentViewController(messageComposeVC, animated: true, completion: nil)
        }
            
        else{
            //let the user know if his/her device isn't able to send texts
            let errorAlert = UIAlertView(title: "Cannot send text message", message: "Your device is not able to send text messages right now", delegate: self, cancelButtonTitle: "OK")
        }

    }

}

