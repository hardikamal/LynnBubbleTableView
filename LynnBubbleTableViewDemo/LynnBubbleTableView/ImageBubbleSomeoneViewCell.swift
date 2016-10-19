//
//  ImageBubbleSomeoneViewCell.swift
//  LynnBubbleTableViewDemo
//
//  Created by Colondee :D on 2015. 11. 4..
//  Copyright © 2015년 lou. All rights reserved.
//

import UIKit

class ImageBubbleSomeoneViewCell: Someone_sBubbleViewCell, LynnAttachedImageProtocol {
    
    @IBOutlet weak var imgView: UIImageView!
    var imageData: LynnAttachedImageData? {
        didSet {
            imageUpdate(to: imgView)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        //        self.imgData.layer.borderWidth = 1.0
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override func setBubbleData(data: LynnBubbleData) {
        
        self.lbNick.text = data.userData.userNickName
        self.imgProfile.image = data.userData.userProfileImage
        self.lbTime.text = data.date._stringFromDateFormat("a h:mm")
        
        self.imageData = data.imageData
    }
    
}
