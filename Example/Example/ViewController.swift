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
    
    let attribute = NSAttributedString(string: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.",
                                       attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 15),
                                                    NSForegroundColorAttributeName: UIColor.gray,
                                                    ])
    textView.set(attribute: attribute)
  }
}

