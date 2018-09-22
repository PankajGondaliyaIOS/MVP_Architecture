//
//  ContactPresenter.swift
//  MVP_Tutorial
//
//  Created by pankaj on 01/03/18.
//  Copyright © 2018 Infostretch. All rights reserved.
//

import Foundation

protocol ContactPresenter {
    var numberOfContacts: Int {get} // Get number of contacts
    func configureCell(cellView: ContactCellView, row:Int)// set cell data using CellView Protocol
}

class ContactPresenterImplementation: ContactPresenter {
    var arrContacts = [Contact]()
    
    //To respond to protocol
    var numberOfContacts: Int { // Provide number of contacts
        return arrContacts.count
    }
    
    func configureCell(cellView: ContactCellView, row:Int) {
        let contact = arrContacts[row]
        cellView.setTitle(title: contact.title)
        cellView.setSubTitle(subTitle: contact.subTitle)
    }
    
    func getContacts(success:(_ strSuccess: String)->Void, failure:(_ strFailure: String)->Void) {
        ContactServices.sharedInstance().fetchAllContacts(strEmail: "pankaj.gondaliya@infostretch.com", strUserId: "01", success: { (successObject) in
            arrContacts = successObject as! [Contact]
                success("Contacts fetched successfully")
        }) { (failureObject) in
            failure("Failed to fetch contacts")
        }
    }
}
