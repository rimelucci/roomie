//
//  MessageComposer.swift
//  SendSMSTutorial
//
//  Created by Rick Melucci on 9/6/16.
//  Copyright © 2016 Beam Ltd. All rights reserved.
//

import Foundation
import MessageUI

let textMessageRecipients = ["1-917-499-5159"]

class MessageComposer: NSObject, MFMessageComposeViewControllerDelegate {
    
    //Checks if you can send the text
    func canSendText() -> Bool {
        return MFMessageComposeViewController.canSendText()
    }
    
    func configuredMessageComposeViewControllerWithMessage(message: String) -> MFMessageComposeViewController {
        
        let messageComposeVC = MFMessageComposeViewController()
        messageComposeVC.messageComposeDelegate = self
        messageComposeVC.recipients = textMessageRecipients
        messageComposeVC.body = message
        return messageComposeVC
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult){
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
}