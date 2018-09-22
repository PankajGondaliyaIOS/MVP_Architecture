//
//  ViewController.swift
//  MVP_Tutorial
//
//  Created by pankaj on 01/03/18.
//  Copyright © 2018 Infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   @IBOutlet weak var tblView: UITableView!
    
    var presenter = ContactPresenterImplementation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

//MARK: View Initiation Methods
extension ViewController {
    func initiateView() {
        presenter.getContacts(success: { (successMessage) in
            print(successMessage)
            tblView.reloadData()
        }) { (failureMessage) in
            print(failureMessage)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfContacts
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as! ContactTableViewCell
        presenter.configureCell(cellView: cell, row: indexPath.row)
        /*let contactViewData = contactToDisplay[indexPath.row]
        cell.labelTitle?.text = contactViewData.name
        cell.labelSubtitle?.text = contactViewData.email*/
        
        return cell
    }
}
