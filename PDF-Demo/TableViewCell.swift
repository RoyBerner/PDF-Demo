//
//  TableViewCell.swift
//  PDF-Demo
//
//  Created by Roy Berner on 12/11/2018.
//  Copyright © 2018 Roy Berner. All rights reserved.
//

import UIKit

protocol cellDelegate {
    func didClickDownloadButton(cell:UITableViewCell)
    func didClickViewButton(cell:UITableViewCell)
    
    
}

class TableViewCell: UITableViewCell {
    
    var delegate:cellDelegate?
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var downloadButton: UIButton!
    @IBOutlet weak var viewButton: UIButton!
    
    
    @IBAction func downloadTapped(_ sender: Any) {
        print("downloadTapped")
        
        delegate?.didClickDownloadButton(cell: self)
    }
    
    @IBAction func viewTapped(_ sender: Any) {
        print("viewTapped")
        
        delegate?.didClickViewButton(cell: self)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewButton.isEnabled = false
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
