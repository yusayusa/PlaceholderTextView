//
//  Configuration.swift
//  PlaceholderTextView
//
//  Created by KazukiYusa on 2017/02/06.
//  Copyright © 2017年 KazukiYusa. All rights reserved.
//

public struct Configuration {
  
  let placeholder: String
  let color: UIColor
  let font: UIFont
  
  public init(placeholder: String, color: UIColor, font: UIFont) {
    
    self.placeholder = placeholder
    self.color = color
    self.font = font
  }
}
