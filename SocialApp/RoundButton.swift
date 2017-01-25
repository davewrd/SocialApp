//
//  RoundButton.swift
//  SocialApp
//
//  Created by David on 25/01/2017.
//  Copyright © 2017 David Ward. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

  override func awakeFromNib() {
    super.awakeFromNib()
    
    layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
    layer.shadowOpacity = 0.8
    layer.shadowRadius = 5.0
    layer.shadowOffset = CGSize(width: 1.0, height: 5.0)
    imageView?.contentMode = .scaleAspectFit
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    layer.cornerRadius = self.frame.width / 2
    
  }
}
