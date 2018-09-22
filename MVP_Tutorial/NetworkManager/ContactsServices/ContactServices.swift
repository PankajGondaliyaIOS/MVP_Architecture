//
//  ContactServices.swift
//  MVP_Tutorial
//
//  Created by pankaj on 06/03/18.
//  Copyright © 2018 Infostretch. All rights reserved.
//

import Foundation

class ContactServices {
    
    static var instance: ContactServices?
    
    static func sharedInstance() -> ContactServices {
        if instance == nil {
            instance = ContactServices()
            return instance!
        } else {
            return instance!
        }
    }
    
    func fetchAllContacts(strEmail: String, strUserId: String, success:(_ responseObject: AnyObject)->Void, failure:(_ failureObject: AnyObject)->Void) {
        
        //success(<#T##AnyObject#>)
        //failure(<#T##AnyObject#>)
        
    }
    
}
