//
//  FancyField.swift
//  SocialApp
//
//  Created by David on 25/01/2017.
//  Copyright © 2017 David Ward. All rights reserved.
//

import UIKit

@IBDesignable
class FancyField: UITextField {

  override func awakeFromNib() {
    super.awakeFromNib()
    
    layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
    layer.borderWidth = 1.0
    layer.cornerRadius = 3.0
  }
  
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.insetBy(dx: 10, dy: 5)
  }
  
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.insetBy(dx: 10, dy: 5)
  }

}
