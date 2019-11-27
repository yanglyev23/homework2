//
//  Button.swift
//  task1
//
//  Created by Admin on 27.11.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class Button: UIButton {
    override var isHighlighted: Bool{
        didSet{
            if isHighlighted{
                backgroundColor = UIColor.red
            }
            else{
                backgroundColor = UIColor.blue
            }
            }
        }
}
