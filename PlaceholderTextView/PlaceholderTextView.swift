//
//  PlaceholderTextView.swift
//  PlaceholderTextView
//
//  Created by KazukiYusa on 2017/02/06.
//  Copyright © 2017年 KazukiYusa. All rights reserved.
//

import UIKit

extension UITextView {
  
  // MARK: - Properties
  
  private struct StoredProperties {
    static var configuration: Void?
    static var placeholderLabel: Void?
  }
  
  private var configuration: Configuration? {
    get {
      let value = objc_getAssociatedObject(self, &StoredProperties.configuration) as? Configuration
      return value
    }
    set {
      objc_setAssociatedObject(self,
                               &StoredProperties.configuration,
                               newValue,
                               objc_AssociationPolicy.OBJC_ASSOCIATION_COPY_NONATOMIC)
    }
  }
  
  private var placeholderLabel: UILabel? {
    get {
      let value = objc_getAssociatedObject(self, &StoredProperties.placeholderLabel) as? UILabel
      return value
    }
    set {
      objc_setAssociatedObject(self,
                               &StoredProperties.placeholderLabel,
                               newValue,
                               objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
  }
  
  // MARK: - Functions
  
  public func set(configuration: Configuration) {
    
    guard placeholderLabel == nil else {
      return
    }
    
    self.configuration = configuration
    configurePlaceholder(configuration: configuration)
    
    NotificationCenter.default
      .addObserver(self,
                   selector: #selector(self.didChangeTextView),
                   name: NSNotification.Name.UITextViewTextDidChange,
                   object: self)
  }
  
  private dynamic func didChangeTextView() {
    
    placeholderLabel?.alpha = text.isEmpty ? 1 : 0
  }
  
  private func configurePlaceholder(configuration: Configuration) {
    
    guard placeholderLabel == nil else {
      return
    }
    
    guard configuration.placeholder.isEmpty == false else {
      return
    }
    
    let label: UILabel = .init()
    label.numberOfLines = 0
    label.backgroundColor = UIColor.clear
    label.font = configuration.font
    label.textColor = configuration.color
    label.text = configuration.placeholder
    label.alpha = text.isEmpty ? 1 : 0
    
    textInputView.addSubview(label)
    
    let top = textContainerInset.top
    let left = textContainerInset.left
    let right = textContainerInset.right
    
    label <- [
      Top(top),
      Left(left + 4),
      Right(right + 4),
    ]
    
    placeholderLabel = label
  }
}
