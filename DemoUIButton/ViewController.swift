//
//  ViewController.swift
//  DemoUIButton
//
//  Created by MTQ on 10/23/18.
//  Copyright © 2018 MTQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var button1: UIButton!
    @IBOutlet private weak var button2: UIButton!
    @IBOutlet private weak var button3: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        button1.setTitle("ABC", for: .selected)
        print(button1.title(for: .normal))
        print(button1.title(for: .selected))
        button1.setTitleColor(UIColor.red, for: .normal)
        
        // MARK: - setTitleShadowColor
        button1.setTitleShadowColor(UIColor.gray, for: .normal)
        button1.titleLabel?.shadowOffset = CGSize(width: 4, height: 4)
        
        button1.reversesTitleShadowWhenHighlighted = true
        
        // MARK: - button2
        button2.adjustsImageWhenHighlighted = true
        button2.showsTouchWhenHighlighted = true
        
        button3.addTarget(self, action: #selector(doSomething(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(doSomething(_:)), for: .touchUpInside)
    }
    
    @objc func doSomething(_ sender: UIButton) {
        print("doSomething")
    }
}

