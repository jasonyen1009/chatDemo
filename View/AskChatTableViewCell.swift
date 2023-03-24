//
//  AskChatTableViewCell.swift
//  chatDemo
//
//  Created by Yen Hung Cheng on 2023/3/24.
//

import UIKit

class AskChatTableViewCell: UITableViewCell {

    
    @IBOutlet weak var textView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        textView.textContainerInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        textView.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
