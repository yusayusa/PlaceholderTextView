//
//  ViewController.swift
//  Example
//
//  Created by KazukiYusa on 2017/02/06.
//  Copyright © 2017年 KazukiYusa. All rights reserved.
//

import UIKit

import PlaceholderTextView

class ViewController: UIViewController {

  @IBOutlet weak var textView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let attribute = NSAttributedString(string: "placeholder",
                                       attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 15),
                                                    NSForegroundColorAttributeName: UIColor.gray,
                                                    ])
    textView.set(attribute: attribute)
  }
}

