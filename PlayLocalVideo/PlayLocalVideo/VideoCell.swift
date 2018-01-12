//
//  VideoCell.swift
//  PlayLocalVideo
//
//  Created by kxrt_013 on 2018/1/12.
//  Copyright © 2018年 kxrt_013. All rights reserved.
//

import UIKit

struct video {
    let image:String
    let title:String
    let source:String
}

class VideoCell: UITableViewCell {
    
    
    @IBOutlet weak var videoScreenshot: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var videoSourceLabel: UILabel!
    
    
    var videoModel : video? {
        willSet {
            if let newValue = newValue {
                self.videoScreenshot.image = UIImage(named: newValue.image)
                self.videoTitleLabel.text = newValue.title
                self.videoSourceLabel.text = newValue.source
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
