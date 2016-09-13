//
//  Roommate.swift
//  Roomi
//
//  Created by Rick Melucci on 9/9/16.
//  Copyright © 2016 Beam Ltd. All rights reserved.
//

import UIKit

class Roommate {
    //Properties
    
    var name: String
    var phoneNumber: String
    
    
    //initializer
    init?(name: String, phoneNumber: String){
        self.name = name
        self.phoneNumber = phoneNumber
        
        
        //in case no info is provided
        if name.isEmpty || phoneNumber.isEmpty {
            return nil
        }
    }
    
}
