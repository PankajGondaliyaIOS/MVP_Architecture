//
//  ContactTableViewCell.swift
//  MVP_Tutorial
//
//  Created by pankaj on 22/06/17.
//  Copyright © 2018 Pankaj. All rights reserved.
//

import UIKit

//This presenter view call will be reserved only for the classes associated with ViewController.swift (ContactTableViewCell)

//This protocol will be used as contact cell which will be displayed in ViewController as Protocol Oriented Programming concept
protocol ContactCellView {
    func setTitle(title:String)
    func setSubTitle(subTitle:String)
}

class ContactTableViewCell: UITableViewCell, ContactCellView {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSubtitle: UILabel!
    
    func setTitle(title: String) {
        labelTitle.text = labelTitle.text
    }
    
    func setSubTitle(subTitle: String) {
        labelSubtitle.text = subTitle
    }
    
    //MARK: Additional Mehods
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
